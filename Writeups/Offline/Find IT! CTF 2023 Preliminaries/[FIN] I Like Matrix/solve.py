#!/usr/bin/python3

with open("EncryptedMessage.txt", 'r') as f:
    cipher = f.readline().rstrip('\n')
    print(cipher)
