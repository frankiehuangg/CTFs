#!/usr/bin/python3

from Crypto.Cipher import AES
from Crypto.Util.number import inverse, long_to_bytes
from hashlib import sha256

with open("out.txt", 'r') as f:
    pq, vka, vkakb, vkb, c = f.read().split('\n', 4)

    p, q = pq.lstrip("p, q = (").rstrip(") ").split(', ')
    p = int(p)
    q = int(q)

    vka = int(vka.lstrip("vka = "))
    vkakb = int(vkakb.lstrip("vkakb = "))
    vkb = int(vkb.lstrip("vkb = "))
    c = bytes.fromhex(c.lstrip("c = '")[:-3])

n = p*q

print(vka % p)

kb = vkakb * inverse(vka, n) % n
ka = vkakb * inverse(vkb, n) % n

v = vka * inverse(ka, n) % n

key = sha256(long_to_bytes(v)).digest()
cipher = AES.new(key, AES.MODE_ECB)
m = cipher.decrypt(c)

print(m)

v_2 = vka * vkb * inverse(vkakb, q) % n
key = sha256(long_to_bytes(v_2)).digest()
cipher = AES.new(key, AES.MODE_ECB)
m = cipher.decrypt(c)



print(m)
