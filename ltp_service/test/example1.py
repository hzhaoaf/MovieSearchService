# -*- coding:utf8 -*-
import sys, time
sys.path.append('../')
import ltpservice
#from account import username, password

client = ltpservice.LTPService("%s:%s" % ('zhaoh@cslt.riit.tsinghua.edu.cn', '6Ts8ZDJK'))
round_start = time.time()
for i in range(0, 1000):
    start = time.time()
    result = client.analysis("很多人觉得剧情很矫情", ltpservice.LTPOption.PARSER)
    print 'No.%s cost %.2f\n' % (i, time.time() - start)
    break

total_cost = time.time() - round_start
print 'total %s average %s' % (total_cost, total_cost / 1000.0)

print result.tostring()

#pid = 0
#for sid in xrange(result.count_sentence(pid)):
#    print "|".join([word.encode("utf8") for word in result.get_words(pid, sid)])
