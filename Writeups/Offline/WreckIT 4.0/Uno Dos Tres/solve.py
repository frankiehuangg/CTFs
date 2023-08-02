#!/usr/bin/python3

encrypt = """3a 00 37 00 2b 00 29 00 2a 00 2d 00 3d 00 6b 00 42 00 1e 00 3b 00 51 00 00 00 42 00 3a 00 1d 00 56 00 02 00 53 00 03 00 0f 00 17 00 3a 00 33 00 2d 00 05 00 11 00 50 00 02 00 51 00 37 00 1d 00 50 00 1b 00 07 00 55 00 0e 00 08 00 1f 00 14 00 1e 00 08 00"""

key = """6d 00 65 00 6e 00 6a 00 61 00 64 00 69 00 5f 00 72 00 65 00 76 00 65 00 72 00 73 00 65 00 5f 00 65 00 6e 00 67 00 69 00 6e 00 65 00 65 00 72 00 5f 00 61 00 64 00 61 00 6c 00 61 00 68 00 5f 00 63 00 69 00 74 00 61 00 63 00 69 00 74 00 61 00 6b 00 75 00"""

encrypt = [int(i, 16) for i in encrypt.split(' ')]
key = [int(i, 16) for i in key.split(' ')]

print(len(encrypt))
print(len(key))

res = []
for i in range(len(encrypt)):
    res.append(chr(encrypt[i] ^ key[i]))

print("".join(res))
