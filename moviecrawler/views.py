# Create your views here.

# -- coding:utf-8 --
from django.http import HttpResponse
from django.utils import simplejson

import getMovieInfoByIdWrapper

def helloMovieCrawler(request):
	return HttpResponse("Hello, NG Guy! Our movie crawler service is working!")

def addMovieByID(request):
	if request.method == 'GET':
	    #retString = 'You are sending a GET request.'
	    #retString += 'Request parmas:' + request.GET.get('subjectID','')

	    subjectID = request.GET.get('subjectID','')

	    retJson = {}
            retJson['msg'] = 'Good boy, you are trying to add a new movie:-)'
	    retJson['subjectID'] = subjectID

            queueIDFilePath = '/home/lihang/OpenData/movie_items/movieIDQueue'

            try:
                #getMovieInfoByIdWrapper.getAllMovieInfoBySubjectIDWrapper(subjectID)
                queueIDFile = open(queueIDFilePath, 'a')
                queueIDFile.write(subjectID + '\n')
                queueIDFile.close()
		retJson['result'] = 'Success'
                retJson['status'] = 'The ID ' + subjectID + ' has been added to the Queue and will be processed later on'
            except Exception as e:
                retJson['result'] = 'Fail'
                retJson['reason'] =  str(e)

	    return HttpResponse(simplejson.dumps(retJson, ensure_ascii = False), content_type="application/json")

