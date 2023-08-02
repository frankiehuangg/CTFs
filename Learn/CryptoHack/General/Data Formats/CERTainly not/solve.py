#!/usr/bin/python3

from Crypto.PublicKey import RSA

# extracted using "openssl x509 -inform DER -in 2048-rsa-example-cert.der -text"
f = open("content.txt", 'r')

key = RSA.importKey(f.read())

print(key.n)
