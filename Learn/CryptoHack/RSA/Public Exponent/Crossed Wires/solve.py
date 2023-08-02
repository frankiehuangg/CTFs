#!/usr/bin/python3

from Crypto.Util.number import inverse, long_to_bytes
from random import randint
from math import gcd

with open("output.txt", 'r') as f:
    private, public, ct = f.readlines()

    private = [int(string) for string in (private.lstrip("My private key: (").rstrip(")\n").split(', '))]

    public = [[int(a) for a in string.split(', ')] for string in (public.lstrip("My Friend's public keys: [(").rstrip(")]\n").split("), ("))]

    ct = int(ct.lstrip("Encrypted flag: ").rstrip("\n"))

N = private[0]
e = 0x10001
d = private[1]

for key in public:
    k = d * e - 1

    found = False

    while (not found):
        g = randint(2, N-1)
        t = k

        while (t % 2 == 0):
            t = t // 2
            x = pow(g, t, N)

            if (x > 1 and gcd(x-1, N) > 1):
                p = gcd(x-1, N)
                q = N // p

                found = True

assert p * q == N

phi = (p-1) * (q-1)

friend_private = [inverse(e_key, phi) for _, e_key in public]

pt = ct

for keys in reversed(friend_private):
    pt = pow(pt, keys, N)

print(long_to_bytes(pt))
