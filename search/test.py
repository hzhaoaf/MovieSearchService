import SearchMysql_v3 as SearchMysql

env = SearchMysql.initJvm()
print str(type(env))




VMEnv=SearchMysql.getVMEnv()
if VMEnv:
	print VMEnv.attachCurrentThread()
else:
	SearchMysql.initJvm()


print str(type(VMEnv))

a = []
b = a

print a is b