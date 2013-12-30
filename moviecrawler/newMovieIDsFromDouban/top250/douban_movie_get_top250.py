#!/usr/bin/python
# -*- coding: utf-8 -*-

'''
Pull Douban Movie Top 250
'''

import urllib2
import socket
import time
import datetime
import json

basicUrl = 'http://api.douban.com/v2/movie/top250'
queueIDFilePath = '/home/lihang/OpenData/movie_items/movieIDQueue'

top250IDFile = 'top250ID-' + str(datetime.date.today())
print top250IDFile

resultMovieIDs = []

def get_items(start, count):
    try:
        reqUrl = basicUrl + '?start=' + str(start) + '&count=' + str(count)
        print 'Now requesting %s ' % (reqUrl)
        req = urllib2.Request(reqUrl)
        response = urllib2.urlopen(req, timeout = 60)
        #print(response.read())

        # Save to file
        print "Success pull items from " + str(start) + " to " + str(start + count - 1)
        rawData = response.read()
        jsonData = json.loads(rawData)

        jsonKeys = jsonData.keys()

        '''
        for jsonKey in jsonKeys:
            print jsonKey
        '''

        movieSubjects = jsonData['subjects']

        for movieSubject in movieSubjects:
            movieLink = movieSubject['alt']
            movieLink = movieLink.replace('http://movie.douban.com/subject/', '')
            movieID   = movieLink.replace('/', '')
            resultMovieIDs.append(movieID)


        '''
        jsonFileName = 'top250-' +str(start) + '-' + str(start + count -1) + '.json'
        print "Now saving to file: %s " % (jsonFileName)
        with open(jsonFileName, "wb") as jsonWriter:
            jsonWriter.write(jsonData)
        '''

    except Exception as e:
        print 'Exception: %s' % (e)

if __name__ == "__main__":
    print 'Start Work...'
    # Get to work
    get_items(0, 100)
    get_items(100, 100)
    get_items(200, 50)

    print 'Successfully got %s movie IDs.' % (len(resultMovieIDs))

    with open(queueIDFilePath, 'a') as queueIDWriter:
        for movieID in resultMovieIDs:
            #print movieID
            queueIDWriter.write(movieID + '\n')

    print 'Done!'
