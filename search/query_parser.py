#coding=utf8

'''
    这个模块对用户输入的词进行解析，生成适合我们的query形式
    默认生成directors，casts，title三个域的search。
    剩下的，击中了某个域，就对应增加那个域，并按照预定的权重生成query
    国外中的人名有中文“·”，所以需要将这个拆分开来
'''
import os, sys
sys.path.append('../')

from ltp_service import ltpservice

from tools.xml_processor import parse_XML
from tools.xml_processor import OK_SINGE_WORDS

module_dir = os.path.dirname(__file__)  # get current directory

#(field, weight)
#每个query term默认都有这几个search field，以及权重
basic_fields_weight = {'directors': '1.0',
                       'casts': '1.0',
                       'title': '1.0',
                       #'summary': '2.0'
                       }
#一旦检查到该term也有boosting_fields中的type，需要增加该域的搜索
boosting_fields_weight = {
                        'directors': '10.0',
                        'casts': '10.0',
                        'title': '10.0',
                        'original_title': '5.0',
                        'aka': '5.0',
                        'countries': '50.0',
                        'user_tags': '50.0',
                        'year': '10.0',
                        'adjs': '15.0',
                        }
use_synonymous = True

def unicode_to_str(raw_str):
    if isinstance(raw_str, str):
        return raw_str
    elif isinstance(raw_str, unicode):
        return raw_str.encode('utf8')

def str_to_unicode(raw_str):
    '''
        将str转换为unicode str，当raw_str已经是unicode，则不用转了
    '''
    if isinstance(raw_str, unicode):
        return raw_str
    else:
        return raw_str.decode('utf8')

class Parser:

    def __init__(self):
        self.load_film_terms()
        self.load_synonyms_adjs()
        self.ltp_client = ltpservice.LTPService("%s:%s" % ('zhaoh@cslt.riit.tsinghua.edu.cn', '6Ts8ZDJK'))

    def load_film_terms(self):
        '''导入离线生成的terms, 用来判断term的基本从属情况

        导入从数据库成生成全部术语集合，用来判断用户的术语所属基本类型
        生成一个子典型数据，key为term，value为list，保存该term从属的全部类型（可能人名会出现在导演，演员，title，user_tags中）

        '''
        fields_terms_path = os.path.join(module_dir, 'fields_terms.txt')
        lines = open(fields_terms_path, 'r').readlines()
        terms = [tuple(l.strip().split('<￥>')) for l in lines if l]
        self.term_types = {}
        for term_str, type_ in terms:
            #国外的中文译名中存在·，需要split之后，以单个人名来搜索
            terms = term_str.split('·')
            for term in terms:
                if term:
                    self.term_types.setdefault(str_to_unicode(term), []).append(type_)

    def load_synonyms_adjs(self):
        synonyms_adjs_path = os.path.join(module_dir, 'synonyms_adjs.txt')
        lines = open(synonyms_adjs_path, 'r').readlines()
        terms = [l.strip().split(':') for l in lines]
        self.syn2ont = {str_to_unicode(t[0]): str_to_unicode(t[1]) for t in terms}
        self.ont2syns = {}
        for t in terms:
            self.ont2syns.setdefault(str_to_unicode(t[1]), []).append(str_to_unicode(t[0]))

    #-----
    def needUseLtp(self,term):
        #this function is written by LA
        commonWordList = [u'的电影']
        for commonWord in commonWordList:
            if term.find(commonWord)>0:
                return True
        return False


    def someConversionTrick(self,term):
        #by LA
        convertDict = {u'戳泪点'   : u'悲伤',\
                       u'戳中泪点' : u'悲伤',
                       u'戳中笑点' : u'搞笑',
                       u'戳中点' : u'搞笑',
                       }
        for eachKey in convertDict.keys():
            term = term.replace(eachKey,convertDict[eachKey])
        return term

    #-----



    def get_synonyms_adjs(self, adj):
        ont = self.syn2ont.get(adj)
        if not ont:
            return [adj]
        adjs = self.ont2syns.get(ont, [adj])
        return adjs

    def parse(self, raw_str):
        #import pdb;pdb.set_trace()
        #这里的terms就是用户输入的raw_str按空格切分
        terms = raw_str.split()
        query = ''
        for term in terms:
            query += self.parse_term(term)
        return query

    def parse_term(self, term):
        ''' 解析单个term

            每个term默认输入title, casts, directors三个域，其他类型一旦击中，都需要增强该域，增加的强度由boosting_fields_weight控制
            使用dict来管理整个过程中需要进行search的域
        '''
        query_fields = basic_fields_weight
        adjs_str, persons_str, location_str = u'', u'', u''

        def generate_query_by_fields(term, field_info, is_must=False):
            if is_must:
                lines = [u'+%s:%s^%s ' % (f, term, w) for f, w in field_info.items()]
            else:
                lines = [u'%s:%s^%s ' % (f, term, w) for f, w in field_info.items()]
            #lines = ['%s:%s' % (r[0], term) for r in field_info]
            return ''.join(lines)

        try:
            #如果term是属于某一个type
            if term in self.term_types and not self.needUseLtp(term): #后一句 LA
                types = self.term_types[term]
                for t in types:
                    query_fields[t] = boosting_fields_weight.get(t, 5.0)

                ##custom_types = [t for t in types if t not in basic_fields_weight.keys()]
                #if custom_types:
                #    need_custom_fields = {ct: custom_fields_weight.get(ct, '1.0') for ct in custom_types}
                #    query_str += generate_query_by_fields(term, need_custom_fields)

            #如果term不属于任意一个type，进行分词
            else:
                #这个时候很有可能是一句话，就引入ltp进行分词

                #---by LA start---
                term = self.someConversionTrick(term)
                #---by LA end---

                #import pdb;pdb.set_trace()
                #import time
                #start = time.time()
                ltp_res = self.ltp_client.analysis(unicode_to_str(term), ltpservice.LTPOption.PARSER)
                #print ltp_res.tostring()
                adjs, persons, locations = parse_XML(ltp_res.tostring(), 1)#直接取出形容词即可
                #print persons
                #能找出形容词则生成形容词域，否则直接返回term
                #print 'get adjs cost %.2fs' % (time.time() - start)
                if not adjs and not persons:
                    return generate_query_by_fields(term, query_fields)
                else:
                    if adjs:
                        adjs_weights = {'adjs': '15.0', 'user_tags': '15.0'}
                        syn_adjs = []
                        #import pdb;pdb.set_trace()
                        for adj in adjs:
                            syn_adjs.extend(self.get_synonyms_adjs(adj))
                        syn_adjs = set(syn_adjs) if use_synonymous else adjs
                        adjs_str = ' '.join([generate_query_by_fields(a, adjs_weights) for a in syn_adjs if len(a) > 1 or a in OK_SINGE_WORDS])

                    if persons:
                        person_weights = {'directors': '10.0', 'casts': '10.0'}
                        query_fields.pop('directors')
                        query_fields.pop('casts')
                        persons_str = ' '.join([generate_query_by_fields(p, person_weights) for p in persons])

                    if locations:
                        location_fields = {'countries': '15.0'}
                        location_str = ' '.join([generate_query_by_fields(l, location_fields, is_must=True) for l in locations])

            return generate_query_by_fields(term, query_fields) + adjs_str + persons_str + location_str
        except Exception as e:
            import traceback
            print e
            print traceback.format_exc()
            return term

    def test_ltp(self, raw_str):
        result = self.ltp_client.analysis(raw_str, ltpservice.LTPOption.PARSER)
        print result.tostring()

def test_parser(raw_str):
    parser = Parser()
    #term = u'张艺谋 章子怡'
    #print term in parser.person_terms
    #parser.test_ltp('很多人觉得剧情很矫情')
    print parser.parse(raw_str)

if __name__ == '__main__':
    if len(sys.argv) > 1:
        raw_str = sys.argv[1].decode('utf8')
    else:
        raw_str = u'我想看张艺谋的电影'
    test_parser(raw_str)
