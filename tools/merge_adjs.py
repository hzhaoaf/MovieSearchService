#coding=utf8
'''
    这个脚本交type3_adj_res的每个电影对应的形容词结果merge到一个文件中, 取topN结果
'''

import os

N = 5
res_dir = 'type3_adj_res'

merged_lines = []

for f in os.listdir(res_dir):
    subject_id = f.replace('.adjs', '')
    path = '%s/%s' % (res_dir, f)
    lines = open(path, 'r').readlines()
    adjs = [l.strip() for l in lines if l]
    adjs = adjs[:N]
    if not adjs:
        continue
    line = '%s\t%s' % (subject_id, ','.join(adjs))
    merged_lines.append(line)

fw = open('merged_adjs_top%s' % N, 'w+')
fw.write('\n'.join(merged_lines))
fw.close()
