import test
import SearchMysql_v3 as SearchMysql




VMEnv=SearchMysql.getVMEnv()
if VMEnv:
	print VMEnv.attachCurrentThread()
else:
	SearchMysql.initJvm()


debug = str(type(VMEnv))

print debug