import os
from Crypto.Util.number import *
from Crypto.Util.Padding import pad, unpad

FLAG = open("flag.txt", "rb").read().strip()
assert(len(FLAG) == 65)

p = getStrongPrime(1024)
q = getStrongPrime(1024)
N = p*q
e = 9
assert(N.bit_length() > 2023)
with open("flag.enc", "w+") as f:
    f.write(str(N))
    f.write("\n")
    for i in range(1945//8, 2023//8):
        pt = pad(FLAG, i)
        pt = pt[::-1]
        pt = bytes_to_long(pt)
        ct = pow(pt, e, N)
        f.write(str(ct))
        f.write("\n")
    