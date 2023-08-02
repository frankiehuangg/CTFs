#!/usr/bin/python3

def decode(n):
    n = int(n) % 37
    if (n == 36):
        return '_'
    if (n > 25):
        return chr(n+22)
    return chr(n+65)

f = open("message.txt", 'r')

msg = f.readline().strip('\n').split(' ')

msg = list(map(decode, msg))

msg = ''.join(msg)

print(msg)
