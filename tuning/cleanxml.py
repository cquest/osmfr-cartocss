import sys
import re

bad_filter = re.compile(r'^ +<Filter.*?(\[[a-z]*\])( =|.match).*?\1')
rule_start = re.compile(r'^ +<Rule')
rule_end = re.compile(r'^ +</Rule')

nb_ok = 0
nb_bad = 0

xml = open(sys.argv[1], 'r')
state = 0
for l in xml:
    if rule_start.match(l):
        rule = l
        state = 1  # in rule
    elif rule_end.match(l):
        if state == 1:
            print(rule+l[:-1])
            nb_ok = nb_ok + 1
        l = ''
        state = 0
    elif bad_filter.match(l):
        state = -1
        nb_bad = nb_bad + 1
    else:
        if state == 1:
            rule = rule + l

    if state == 0 and l != '':
        print(l[:-1])

print('<!-- %s bad filters (rules removed), %s rules kept -->' %(nb_bad, nb_ok))
