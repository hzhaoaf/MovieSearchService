#coding=utf8
'''
    这个脚本从评论的句法分析中提取需要的形容词
'''

import os, time

import xml.etree.ElementTree as ET

from itertools import groupby

dependency_res_dir = '../../ltp/bin/comments_dependency_res/'

TYPE = 3
adj_res = 'type%s_adj_res' % TYPE


if not os.path.isdir(adj_res):
    os.mkdir(adj_res)



def parse_comments_dependency_res(filename):
    '''
        对每个subjec_id(文件名)的评论的依存分析结果进行解析
        每个文件包含多个结果分析的xml，所以需要首先提取每个xml的string
    '''
    file_path = '%s/%s' % (dependency_res_dir, filename)
    lines = open(file_path, 'r').readlines()
    subject_id = filename.replace('.res', '')
    xmls_list = res = [list(group) for k, group in groupby(lines, lambda x: x=='\n') if not k]
    xml_strs = [''.join(r) for r in xmls_list]
    adjs = []

    for xml_str in xml_strs:
        adjs.extend(parse_XML(xml_str, processing_type=TYPE))

    adj_nums = {}
    for adj in adjs:
        adj = adj
        adj_nums[adj] = adj_nums.get(adj, 0) + 1
    adj_nums = sorted(adj_nums.items(), key=lambda d: d[1], reverse=True)
    adjs = ['%s=%s' % (r[0], r[1]) for r in adj_nums]


    saved_path = '%s/%s.adjs' % (adj_res, subject_id)
    fw = open(saved_path, 'w+')
    fw.write('\n'.join(adjs).encode('utf8'))
    fw.close()

def generate_adjs():
    cnt = 0
    files = os.listdir(dependency_res_dir)
    total = len(files)
    pro_start = time.time()
    for filename in files:
        try:
            cnt += 1
            start = time.time()
            parse_comments_dependency_res(filename)
            total_cost = (time.time() - pro_start) / 60.0
            print 'finish processing %s, cost %.2fs(%.2fmin) --%s/%s' % (filename.replace('.res', ''), time.time() - start, total_cost, cnt, total)
        except Exception as e:
            print 'error occured: %s' % e
            import traceback
            traceback.print_exc()
            continue





