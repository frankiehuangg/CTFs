#!/usr/bin/python3

from Crypto.PublicKey import RSA
import base64

f = open("bruce_rsa.pub", 'r')
key = RSA.importKey(f.read())

print(key.n)
