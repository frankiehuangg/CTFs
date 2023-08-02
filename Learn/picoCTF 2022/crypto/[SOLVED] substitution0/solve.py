#!/usr/bin/python3

f = open("message.txt", 'r')

texts = f.readlines()
texts = [texts[i].strip('\n') for i in range(len(texts))]

codes = texts[0]

def decode(n):
    if ((ord(n) < 65) or (ord(n) > 90 and ord(n) < 97) or (ord(n) >122)):
        return n

    upper = True
    if (ord(n) > 96 and ord(n) < 123):
        upper = False

    index = codes.index(n.upper())

    if (upper):
        return chr(index+65)
    return chr(index+97)

message = []
for i in range(len(texts)):
    temp = list(map(decode, texts[i]))
    message.append(''.join(temp))

print(message)
