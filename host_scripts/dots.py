#!/usr/bin/env python
import sys
import re
import os
import subprocess
import math 


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print("Usage: %s <res_a>,<res_b>,..." % sys.argv[0])
        sys.exit(1)
    arg = sys.argv[1].split(',')
    check = sys.argv[2]
    files = map(open, arg)
    texts = map((lambda file: file.readlines()), files)
    saved = []
    for text in texts:
      saved.append(text)
    i = 0
    j = 0
    time = range(6001)
    solved = []
    while j<len(time):
      solved.append([])
      solved[j].append(float(j/10))

      for text in saved:
        solved[j].append(0)
        for line in text:
          string = line.split(',')
          name = string[0]
          status = string[1]
          value = string[2]
          if (float(value) < float(j/10)) and check == status:
            solved[j][len(solved[j])-1] += 1
      j+=1


    i = 0
    for time in solved:
        s = ""
        for value in time:
          s += str(value) + " "
        if ((i==0) or (solved[i][1] > solved[i-1][1])) :
          print(s)
        i+=1
    print("601.0" + " " + str(solved[i-1][1]))
