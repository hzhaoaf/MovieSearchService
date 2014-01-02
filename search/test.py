import SearchMysql_v3 as SearchMysql


SearchMysql.initJvm()
VMEnv=SearchMysql.getVMEnv()
if VMEnv:
	print VMEnv.attachCurrentThread()
else:
	SearchMysql.initJvm()


debug = str(type(VMEnv))

print debug

