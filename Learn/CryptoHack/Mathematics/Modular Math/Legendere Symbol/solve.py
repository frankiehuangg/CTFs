#!/usr/bin/python3

import math

def check_residue(a, p):
    if (pow(a, (p-1)//2, p) == 1):
        return a
    return -1

f = open("output.txt", 'r')

content = f.readlines()

p = int(content[0].split()[2])

print(pow(p, 1, 4))

nums = content[2].split()
ints = []

for i in range(2, len(nums)):
    ints.append(int(nums[i].strip(' ').strip('[').strip(']').strip(',')))

for i in range(len(ints)):
    res = check_residue(ints[i], p)
    if (res != -1):
        print(f"{res = }\n{(p+1)//4 = }\n{p = }\n")
        print(f"{pow(res, (p+1)//4, p) = }")
