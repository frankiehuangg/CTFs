#!/usr/bin/python3

from os import system

system('clear')

def decode(n):
    n = pow(int(n), -1, 41)
    print(n, end=' ')
    if (n == 37):
        return '_'
    if (n > 26):
        return chr(n+21)
    return chr(n+64)

f = open("message.txt", 'r')

msg = f.readline().strip('\n').split(' ')[:-1]

msg = list(map(decode, msg))

msg = ''.join(msg)

print(msg)
