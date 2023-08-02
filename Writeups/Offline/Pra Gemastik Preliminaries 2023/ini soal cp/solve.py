#!/usr/bin/python3

import os
from typing import List
from pwn import *

class mystery:
    def __init__(self = None, key = None):
        self.arr = (lambda x: [ i for i in x ])(range(256))
        n = len(key)
        j = 0
        for i in range(256):
            j = j + self.arr[i] + key[i % n]
            j = j % 256
            self.arr[i] = self.arr[j]
            self.arr[j] = self.arr[i]

    
    def validate(self = None, key = None, target = None, seed = {
        'key': int,
        'target': int,
        'seed': List[int],
        'return': (bool, List[int]) }):
        i = 0
        j = int(str(key), 11)

        print(key, i, j)

        while key > 1:
            if key % 2:
                i = i * 2 + 2
            else:
                i = i * 2 + 1
            key >>= 1
        seed[i % 256] = seed[j % 256]
        seed[j % 256] = seed[i % 256]
        if i < 256:
            pass
        return (self.arr[i] == target, seed)

io = remote(sys.argv[1], sys.argv[2])

seed = io.recvline(False)

print(seed)

seed = (lambda x: [ c for c in x ])(seed)
copy = (lambda x: [ c for c in x ])(seed)

assert seed == copy

for _ in range(16):
    box = mystery(seed)
    for _ in range(16):
        io.recvuntil(b"! ")

        guess = int(io.recvline(False))


        print(copy)
        print(seed.index(guess))
