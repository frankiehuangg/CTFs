from Crypto.Util.number import *
import random
from sympy import *

FLAG = b"RRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTEDRRRRREDACTEDEDACTEDEDACTEDEDACTEDEDACTEDEDACTED"
def prime_generation():
    p = getPrime(512)
    q = nextprime(p)
    while p%4 != 3 or q%4 !=3:
        p = getPrime(512)
        q = nextprime(p)
    return p, q

def encryption(m, n):
	return (pow(pow(m,2,n)*(m*m),4,n))%n

def e2(m, e, n):
    return pow(m, e, n)

def decryption(ct, d, n):
    return pow(ct, d, n)

p, q = prime_generation()
n = p*q
m = bytes_to_long(FLAG)

ct = encryption(m, n)
c2 = e2(m, 16, n)

assert c2 == ct

e = 16
mv = (p-1) * (q-1)
d = inverse(e, mv)

print(e*d - mv)

assert inverse(e*d, mv) == 1

print(pow(m, e*d, n) - m%n)

assert m%n == pow(m, e*d, n)

pt = decryption(ct, d, n)

print(long_to_bytes(pt))

file = open('hasil.txt', 'w')
file.write(f"n = {n}\nct = {ct}")
