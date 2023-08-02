#!/usr/bin/python3

from Crypto.PublicKey import RSA

f = open("transparency.pem", 'r')

key = RSA.importKey(f.read())

print(key.n)
print(key.e)
