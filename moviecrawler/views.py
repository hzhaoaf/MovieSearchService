# Create your views here.

# -- coding:utf-8 --
from django.http import HttpResponse
from django.utils import simplejson

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

	return HttpResponse(simplejson.dumps(retJson, ensure_ascii = False), content_type="application/json")

