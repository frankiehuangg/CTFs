#!/usr/bin/python3

from sympy.ntheory.residue_ntheory import sqrt_mod
from Crypto.Util.number import long_to_bytes

with open('broken_rsa.txt', 'r') as f:
    n, e, ct = f.read().split('\n', 2)

    n = int(n.lstrip('n = '))
    e = int(e.lstrip('e = '))
    ct = int(ct.lstrip('ct = '))

# since e is small, we can root it 4 times to get the m from ct

choices = []

for a in sqrt_mod(ct, n, all_roots = True):
    for b in sqrt_mod(a, n, all_roots = True):
        for c in sqrt_mod(b, n, all_roots = True):
            for d in sqrt_mod(c, n, all_roots = True):
                choices.append(d)

for choice in choices:
    try:
        print(long_to_bytes(choice))
    except:
        continue
