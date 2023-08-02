#!/usr/bin/python3

def find_sqrt(a, p):
    for i in range(1, p-1):
        if (pow(i, 2, p) == a):
            return i
    return -1

p = 29
ints = [14, 6, 11]

for i in range(len(ints)):
    print(find_sqrt(ints[i], p))
