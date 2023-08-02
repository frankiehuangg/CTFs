# Source Generated with Decompyle++
# File: chall.pyc (Python 3.7)

import os
from libnum import *
from typing import List

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

        print(self.arr)
        

    
    def validate(self = None, key = None, target = None, seed = {
        'key': int,
        'target': int,
        'seed': List[int],
        'return': (bool, List[int]) }):
        i = 0
        j = int(str(key), 11)

        print(key, i, j)
        print(self.arr.index(target))

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



def server(flag):
    seed = os.urandom(256)
    print(seed.hex())
    seed = (lambda x: [ c for c in x ])(seed)
    print(seed)
    for _ in range(16):
        box = mystery(seed)
        for _ in range(16):
            guess = s2n(os.urandom(1))
            print(f'''! {guess}''')
            command = input('> ').strip()
            if not len(command) < 100:
                raise AssertionError
            (f, seed) = box.validate(int(command), guess, seed)
            if not f:
                print('Bzzzzt!')
                exit(0)
    
    print('Congratz, you got it!')
    print(flag)
    exit(0)

if __name__ == '__main__':
    flag = open('src/flag.txt', 'r').read().strip()
    server(flag)
