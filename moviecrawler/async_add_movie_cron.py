#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import getMovieInfoByIdWrapper

queueIDFilePath = '/home/lihang/OpenData/movie_items/movieIDQueue'
queueIDProcessedFilePath = '/home/lihang/OpenData/movie_items/processedMovieID'
queueIDSuccessedFilePath = '/home/lihang/OpenData/movie_items/successedMovieID'
queueIDFailedFilePath = '/home/lihang/OpenData/movie_items/failedMovieID'

queueIDProcessedFile = open(queueIDProcessedFilePath, 'a')
queueIDSuccessedFile = open(queueIDSuccessedFilePath, 'a')
queueIDFailedFile = open(queueIDFailedFilePath, 'a')

with open(queueIDFilePath, 'rw') as queueIDFile:
    queueIDsToProcess = queueIDFile.readlines()
    if len(queueIDsToProcess) > 0:
        #queueIDToProcess = queueIDFile.readline().strip('\n')
        #queueIDToProcess = queueIDFile.readline()
        queueIDToProcess = queueIDsToProcess[0].strip('\n')
        print 'Will process ID: %s' % (queueIDToProcess)
        temp = os.system("sed -i -e '1d' " + queueIDFilePath) # remove firt line from task file
        queueIDProcessedFile.write(queueIDToProcess + '\n')
        try:
            getMovieInfoByIdWrapper.getAllMovieInfoBySubjectIDWrapper(queueIDToProcess)
            queueIDSuccessedFile.write(queueIDToProcess + '\n')
        except Exception as e:
            print 'Exception: %s' % (e)
            queueIDFailedFile.write(queueIDToProcess + '\n')
    else:
        # Nothing to do, just return
        print 'No Movie IDs to process and will exit'
        #return

queueIDProcessedFile.close()
queueIDSuccessedFile.close()
queueIDFailedFile.close()
