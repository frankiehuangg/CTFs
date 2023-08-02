#!/usr/bin/python3

from random import randint

with open('output.txt', 'r') as f:
    ciphertext = f.readline().strip('\n').lstrip('[').rstrip(']').split(', ')
    ciphertext = [int(i) for i in ciphertext]
    
a = 288260533169915
p = 1007621497415251

def decrypt(ciphertext):
    plaintext = b''

    for num in ciphertext:
        if (pow(num, (p-1)//2, p) == 1):
            plaintext += b'1'
        else:
            plaintext += b'0'

    plaintext = ''.join([chr(int(plaintext[i:i+8], 2)) for i in range(0, l, 8)])

    return plaintext

l = len(ciphertext)

print(decrypt(ciphertext))
