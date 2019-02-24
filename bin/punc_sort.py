#!/usr/bin/python

import fileinput
import operator

mydict = {}
for line in fileinput.input():
    st = ''.join(line.replace(" ", "").split())
    for c in st:
        if not c.isalnum():
            if c not in mydict:
                mydict[c] = 1
            else:
                mydict[c] += 1

sorted_dict = sorted(mydict.items(), key=lambda kv: kv[1], reverse=True)
for d in sorted_dict:
    print d[0], d[1]

