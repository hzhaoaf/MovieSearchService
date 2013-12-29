# !/usr/bin/python
#coding:utf-8

import os

count = 0

for root, dirs, files in os.walk(".", topdown=False):
	# print 'print files'
    for name in files:
    	if name[-3:] == '.py':
    		path = os.path.join(root, name)
        	print(path)
        	f = open(path,'r').readlines()
        	count = count + len(f)

print u'共有python代码:'+str(count)+u'行'
