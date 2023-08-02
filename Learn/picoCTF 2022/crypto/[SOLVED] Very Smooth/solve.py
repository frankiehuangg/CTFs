#!/usr/bin/python3

from binascii import hexlify
import sympy
import math
import os
import sys

os.system("clear")

if (sys.version_info < (3, 9)):
    math.gcd = gcd
    math.lcm = lcm

f = open("output.txt", 'r')

number = f.readlines()

number = [number[i].split() for i in range(len(number))]

def pollard(n):
    a = 2
    i = 2

    while (True):
        a = pow(a, i, n)
        #a = (a**i) % n

        d = math.gcd((a-1), n)

        if (d > 1):
            return d

        i += 1

n = int(number[0][2], 16)

c = int(number[1][2], 16)

num = n

ans = []

while (True):
    d = pollard(num)

    ans.append(d)

    r = num//d

    ans.append(r)

    break

e = 0x10001
p = ans[0]
q = ans[1]

m = math.lcm(p-1, q-1)
d = pow(e, -1, m)

msg = pow(c, d, n)

print(bytes.fromhex(hex(msg)[2:]).decode("ASCII"))
