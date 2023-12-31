#!/usr/bin/env python

from string import ascii_uppercase

key = "bdbcfda"
num = "2021530"

key = key[::-1]
key = ''.join([str(ord(i) - 97 + ord(num[j]) - ord('0')) for j, i in enumerate(key)])
encrypted = []

with open('plaintext.txt') as handle: 
	plaintext = handle.read()

	i = 0
	for c in plaintext:
		c = c.upper()

		if (c in ascii_uppercase):
			index = ascii_uppercase.index(c)
			shift = int(key[i % len(key)])
			enc_text = ascii_uppercase[(index + shift) % len(ascii_uppercase)]
			encrypted.append(enc_text)
			i += 1

		else:
			encrypted.append(c)

print(''.join(encrypted))

'''
so you have found the key... but it's not as simple as that.
the new key is the old one in reverse + 2021530
and i think the encoder is slightly broken, oops 
'''


