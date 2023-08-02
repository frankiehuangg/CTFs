#!/usr/bin/python3
from Crypto.Util.number import *
from Crypto.Util.Padding import unpad

ciphers = open("flag.enc", "r").read().strip()
print(ciphers)

N = int(ciphers[0])
e = 9

d = owiener.attack(e, N)

if d:
    index = 1
    for i in range(1945//8, 2023//8):
        padded_pt = pow(ciphers[i], d, N)
        padded_pt = long_to_bytes(padded_pt)
        padded_pt = padded_pt[::-1]
        try:
            pt = unpad(padded_data, i)
            print(pt)
        except:
            pass

else:
    print("Attack failed")

