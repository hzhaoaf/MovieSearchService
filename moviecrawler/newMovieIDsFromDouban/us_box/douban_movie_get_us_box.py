#!/usr/bin/python
# -*- coding: utf-8 -*-

'''
Pull Douban Movie US Box
'''

import urllib2
import socket
import time
import datetime
import json

basicUrl = 'http://api.douban.com/v2/movie/us_box'
queueIDFilePath = '/home/lihang/OpenData/movie_items/movieIDQueue'

usboxIDFile = 'usboxID-' + str(datetime.date.today())
print usboxIDFile

resultMovieIDs = []

def get_items():
    try:
        reqUrl = basicUrl;
        print 'Now requesting: %s'  % (reqUrl)
        req = urllib2.Request(reqUrl)
        response = urllib2.urlopen(req, timeout = 60)
        #print(response.read())

        # Save to file
        rawData = response.read()
        jsonData = json.loads(rawData)

        jsonKeys = jsonData.keys()

        '''
        for jsonKey in jsonKeys:
            print jsonKey
        '''

        movieSubjects = jsonData['subjects']

        for movieSubject in movieSubjects:
            movieLink = movieSubject['subject']['alt']
            movieLink = movieLink.replace('http://movie.douban.com/subject/', '')
            movieID   = movieLink.replace('/', '')
            resultMovieIDs.append(movieID)


        '''
        jsonFileName = 'us_box.json'
        print "Now saving to file: %s" % (jsonFileName)
        with open(jsonFileName, "wb") as jsonWriter:
            jsonWriter.write(jsonData)
        '''

    except Exception as e:
        print 'Exception: %s' % (e)

if __name__ == "__main__":
    print 'Start Work...'
    # Get to work
    get_items()

    print 'Successfully got %s movie IDs.' % (len(resultMovieIDs))

    with open(queueIDFilePath, 'a') as queueIDWriter:
        for movieID in resultMovieIDs:
            #print movieID
            queueIDWriter.write(movieID + '\n')

    print 'Done!'
