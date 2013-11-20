# -- coding:utf-8 --
#usage: process the get request of the app
from django.http import HttpResponse
from django.utils import simplejson

from django.utils.http import urlquote
import urllib

#import sys
#sys.path.append('./')
import search.SearchMysql_v2 as searchmysql
import search.IndexMysql
'''
interface for querying from app
use standard get request
return json
'''


searchmysql.initJvm()

def index(request):
    return HttpResponse('This is a test html')

def search(request):
    #try:
    #return HttpResponse(request)
    if request.method == 'GET':
        # extract the specified get parameters
        #command = urlquote(request.get['command']).decode('utf8')
        import urlparse
        #query_str is 'command=%E8%AF%9D&start=0&count=10'
        # The blow expression is wrong! request has no 'get' function, but has 'GET' as a dict, use request.GET['field_name']
        #query_str = request.get('QUERY_STRING', '')
        #args = urlparse.parse_qs(query_str)
        command = urllib.unquote(request.GET['command'])
        start = int(urllib.unquote(request.GET['start']))#start 规定从0开始
        count = int(urllib.unquote(request.GET['count']))


        # here goes the pylucene routines, fetch results and construct json
        # we can construct a standard python dictionary and then convert it to json
        # examples for returning json are demonstrated blow

        awrapper = IndexMysql.createawrapper()
        searcher,analyzer = searchmysql.config()
        retlist = searchmysql.run(command,searcher,awrapper)

        anscount = len(retlist)

        retobj = {}

        if start+count < anscount:
            retobj['count'] = count
            retobj['start'] = start
            retobj['total'] = anscount
            retobj['subjects'] = retlist[start:start+count]
        elif start < anscount:
            retobj['count'] = anscount-start
            retobj['start'] = start
            retobj['total'] = anscount
            retobj['subjects'] = retlist[start:anscount]
        else:
            retobj['count'] = '老纪你看清楚，总共才'+str(anscount)+'个！'

        retjson = retobj
        #retjson = simplejson.dumps(retobj,ensure_ascii=false)  #all is unicode withoout ensure...
        #retjson = eval(retjson) #将原本是字符串的json的引号去掉 比如'[1,2,3]'-->[1,2,3],将字符串变成变量
        #retjson = retlist[0:5] #right encode utf8 list

        '''
        emdjson = {}
        emdjson['code'] = 0
        emdjson['message'] = 'hello little dict'
        emdjson['goal'] = u'测试字典嵌套的json输出'

        retjson['emdjson'] = emdjson
        '''

        return HttpResponse(simplejson.dumps(retjson, ensure_ascii = false), content_type="application/json")
    '''
    except exception, e:
            errjson = {}
            errjson['retcode'] = 1
            errjson['message'] = 'sorry, server exception occurred!'
            errjson['exceptioncode'] = e.args[0]
            #errjson['exceptionmessage'] = e.args[1]
            return httpresponse(simplejson.dumps(errjson, ensure_ascii = false), content_type="application/json")
    '''
