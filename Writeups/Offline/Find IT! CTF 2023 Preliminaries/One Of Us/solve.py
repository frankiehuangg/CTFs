#!/usr/bin/python3

key = list("bdbcfda")
num = list("2021530")

for i in range(len(key)):
    val = (26-(ord(key[i])-97) + int(num[i])) % 26
    key[i] = chr(97+val)

print("".join(key))
