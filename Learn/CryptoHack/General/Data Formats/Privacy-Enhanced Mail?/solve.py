#!/usr/bin/python3

from Crypto.PublicKey import RSA

f = open("privacy_enhanced_mail.pem", 'r')

key = RSA.importKey(f.read())

print(key.d)
