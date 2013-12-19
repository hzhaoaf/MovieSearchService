#coding=utf8

import xml.etree.ElementTree as ET

#单字形容词的白名单
OK_SINGE_WORDS = [u'老', u'好', u' 烂', u'美', u'滥', u'冷', u'棒', u'苦', u'惨', u'帅', u'爽', u'假',]

def parse_XML(xml_str, processing_type=1):
    '''
        从字符串中生成xml文档, 解析xml文档，获得需要的形容词,
        type--
    '''
    adjs = []
    root = ET.fromstring(xml_str)
    if processing_type == 1:
        #1: 表示直接选择词性为a的词
        adj_eles = root.findall('.//word[@pos="a"]')
        adjs = [e.attrib.get('cont') for e in adj_eles]
    if processing_type == 2:
        #2：在1的基础上去掉relation为ADV的
        words = root.findall('.//word')
        adjs = [w.attrib.get('cont') for w in words if w.attrib.get('pos') == 'a' and w.attrib.get('relate') != 'ADV']

    if processing_type == 3:
        #3: 在2的基础上过滤单字的形容词，保留白名单中的单字形容词
        words = root.findall('.//word')
        adjs = [w.attrib.get('cont') for w in words if w.attrib.get('pos') == 'a' and w.attrib.get('relate') != 'ADV']
        adjs = [a for a in adjs if len(a) > 1 or a in OK_SINGE_WORDS]

    return adjs


