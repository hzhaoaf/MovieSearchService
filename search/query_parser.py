#coding=utf8

'''
    这个模块对用户输入的词进行解析，生成适合我们的query形式
'''
#(field, weight)
person_fields_weight = [('directors', '1.0'),
                        ('casts', '1.0'),
                        ('writers', '1.0')
                        ]
non_person_fields_weight = [('title', '1.0'),
                            ('original_title', '1.0'),
                            ('aka': '1.0'),
                            ('countries', '0.5'),
                            ('user_tags', '1.0'),
                            ('summary', '1.0')
                            ]

class Parser:

    def __init__(self):
        self.load_film_terms()
        pass

    def load_film_terms(self):
        '''导入离线生成的terms

        导入从数据库成生成全部的人名和非人名的术语集合，用来判断用户的术语所属基本类型

        '''
        lines = open('person_temrs.txt', 'r').readlines()
        self.person_terms = set([l.strip() for l in lines])
        lines = open('non_person_temrs.txt', 'r').readlines()
        self.non_person_terms = set([l.strip() for l in lines])

    def parse(self, raw_str):
        terms = raw_str.split()
        query = ''
        for term in terms:
            query += self.parse_term(term)
        return query

    def parse_term(self, term):
        ''' 解析单个term

        基于person_terms和non_person_terms判断该term的基本情况，然后生成不同类型的query_str

        '''

        def generate_query_by_fields(term, field_info):
            lines = ['%s: %s^%s' % (r[0], term, r[1]) for r in field_info]
            return ' '.join(lines)


        if self.person_term.contains(term) and self.non_person_term.contains(term):
            query_str = generate_query_by_fields(person_fields_weight + non_person_fields_weight)
        elif self.person_term.contains(term):
            query_str = generate_query_by_fields(person_fields_weight)
        elif self.non_person_term.contains(term):
            query_str = generate_query_by_fields(non_person_fields_weight)
        else:
            query_str = generate_query_by_fields(person_fields_weight + non_person_fields_weight)
        return query_str

