#!/usr/bin/python3

import random
from Crypto.Util.number import getPrime

primes = []

while (len(primes) < 464):
    val = getPrime(13)
    if (val not in primes):
        primes.append(val)

encrypted = "60 46 dd e5 da bf 9a 1f 02 16 c1 3d b9 1b d5 50 2e a5 8e d8 22 77 05 8e 4f b8 6c 68 7b a6".split(' ')

for test in primes:
    random.seed(test)

    if (int(encrypted[0], 16) ^ random.randint(0, 255) == 70):
        print(test)

cand = [8059, 6029, 5333]

for c in cand:
    ans = ''
    random.seed(c)

    for i in range(len(encrypted)):
        ans += chr(int(encrypted[i], 16) ^ random.randint(0, 255))

    print(ans)

print(encrypted)

print(primes)
