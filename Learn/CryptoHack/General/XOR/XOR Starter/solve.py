#!/usr/bin/python3

from pwn import xor

string = "label"
integer = 13

print(xor(string, integer))
