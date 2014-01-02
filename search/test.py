import SearchMysql_v3 as SearchMysql


SearchMysql.initJvm()
VMEnv = SearchMysql.getVMEnv()
debug = str(type(VMEnv))

print debug

