#!/usr/bin/python3
from libnum import *
from sympy import nextprime
from Crypto.Util.number import *

with open("out.txt", "r") as f:
    cipher = f.read().rstrip("\n").split("\n")
    cipher = [int(num) for num in cipher]

start = (1 << (24 - 1))
end = (1 << 24)

print(start)
print(end)
print(getRandomNBitInteger(24))
# n_state = (a * (state**2) + b) % n
# cipher[1] = (a * (cipher[0]**2) + b) % n 
# cipher[2] = (a * (cipher[1]**2) + b) % n 
print(len(cipher))

def next(a, b, n

for a in range(start, end):
    for b in range(start, end):
        curr_iter = cipher[0]
        next_iter = cipher[1]

        valid = True
        recovered = 
