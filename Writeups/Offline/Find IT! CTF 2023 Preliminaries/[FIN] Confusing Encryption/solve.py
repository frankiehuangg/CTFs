#!/usr/bin/python3

# bytes -> hex -> int, xor -> hex
from Crypto.Util.number import long_to_bytes, bytes_to_long
import random

with open("encrypted.txt", "r") as f:
    cipher = f.read()
    cipher = int(cipher, 16)

length = len(long_to_bytes(cipher)) * 2

start = 10**(1 - 1)
end = (10**6) - 1

for i in range(start, end):
    if (i % 10000 == 0):
        print(i)

    random.seed(i)
    
    key = random.randint(16**(length - 1), (16 ** length) - 1)

    plain = long_to_bytes(cipher ^ key) 
    if (b'FindIT' in plain):
        print(plain)
        break
