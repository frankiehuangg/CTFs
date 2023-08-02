#!/usr/bin/python3

from Crypto.Util.number import long_to_bytes, inverse
from gmpy2 import iroot

n = 742449129124467073921545687640895127535705902454369756401331
e = 3
ct = 39207274348578481322317340648475596807303160111338236677373

p = 752708788837165590355094155871
q = 986369682585281993933185289261

m = (p-1)*(q-1)

d = inverse(e, m)

pt = long_to_bytes(pow(ct, d, n))

print(pt)