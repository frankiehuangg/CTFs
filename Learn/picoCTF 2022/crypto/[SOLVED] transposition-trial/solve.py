#!/usr/bin/python3
from os import system

system("clear")

f = open("message.txt", 'r')

texts = f.readline()

message = []
for i in range(len(texts)//3):
    message.append(texts[3*i:3*i+3])

for i in range(len(message)):
    print(message[i][2], end='')
    print(message[i][0], end='')
    print(message[i][1], end='')

