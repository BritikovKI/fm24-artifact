#!/usr/bin/env python3
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
    files = map(open, arg)
    check = sys.argv[2]
    texts = map((lambda file: file.readlines()), files)
    saved = []
    for text in texts:
      saved.append(text)
    #for text in texts:
    #  print(text)
    #left = sys.argv[1]
    #right = sys.argv[2]
    #file_left = open(left).readlines()
    #file_right = open(right).readlines()
    i = 0
    j = 0
    time = range(601)
    solved = []
    while j<len(time):
      solved.append([])
      solved[j].append(j)

      for text in saved:
        solved[j].append(0)
        for line in text:
          string = line.split(',')
          name = string[0]
          status = string[1]
          value = string[2]
          if (float(value) < j) and status == check:
            solved[j][len(solved[j])-1] += 1
      j+=1


    i = 0
    while i<len(solved):
        s = ""
        for value in time:
          s += str(value) + " "
        print(s)
