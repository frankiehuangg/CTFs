#!/usr/bin/python3

f = open("caterpillar.js", 'r')

lines = []

def decode(s):
    amt = 0

    for i in range(0, len(s), 2):
        if (s[i] == '-'):
            amt += 1

    return amt

for line in f:
    if ("flag.charCodeAt" in line):
        lines.append(line[17:].strip().replace(')', '').replace('&&', ''))

for i in range(len(lines)):
    lines[i] = lines[i].split(' ')
    lines[i].pop(1)

flag = [0 for i in range(len(lines))]

for i in range(len(lines)):
    flag[decode(lines[i][0])] = chr(decode(lines[i][1]))

for i in range(len(flag)):
    print(flag[i], end='')
print()
