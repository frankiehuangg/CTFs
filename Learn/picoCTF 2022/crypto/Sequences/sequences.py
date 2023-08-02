import math
import hashlib
import sys
from tqdm import tqdm
import functools

from sympy import *

ITERS = int(2e7)
VERIF_KEY = "96cc5f3b460732b442814fd33cf8537c"
ENCRYPTED_FLAG = bytes.fromhex("42cbbce1487b443de1acf4834baed794f4bbd0dfe2d6046e248ff7962b")

# This will overflow the stack, it will need to be significantly optimized in order to get the answer :)
#@functools.cache
# def m_func(i):
#    if i == 0: return 1
#    if i == 1: return 2
#    if i == 2: return 3
#    if i == 3: return 4

#    return 55692*m_func(i-4) - 9549*m_func(i-3) + 301*m_func(i-2) + 21*m_func(i-1)

def multiply(a, b):
    mul = [[0 for x in range(4)]
           for y in range(4)]

    for i in range(4):
        for j in range(4):
            mul[i][j] = 0
            for k in range(4):
                print(f"\tCALC: {i}, {j}, {k}")
                mul[i][j] += a[i][k] * b[k][j]
                mul[i][j] %= 10**10000

    return mul

def power(arr, n):
    print(n)

    mtx = [[55692, -9549, 301, 21],
           [1, 0, 0, 0],
           [0, 1, 0, 0],
           [0, 0, 1, 0]]

    if (n == 2):
        return multiply(arr, arr)

    arr = power(arr, int(n/2))

    print(n)

    arr = multiply(arr, arr)

    if (n % 2 != 0):
        arr = multiply(arr, mtx)

    return arr

def m_func(n):
    arr = [[55692, -9549, 301, 21],
           [1, 0, 0, 0],
           [0, 1, 0, 0],
           [0, 0, 1, 0]]

    res = power(arr, n-2)

    val = 0

    best = [4, 3, 2, 1]

    for i in range(4):
        val += best[i] * res[0][i]

    return val


    

# Decrypt the flag
def decrypt_flag(sol):
    sol = sol % (10**10000)
    sol = str(sol)
    sol_md5 = hashlib.md5(sol.encode()).hexdigest()

    if sol_md5 != VERIF_KEY:
        print("Incorrect solution")
        sys.exit(1)

    key = hashlib.sha256(sol.encode()).digest()
    flag = bytearray([char ^ key[i] for i, char in enumerate(ENCRYPTED_FLAG)]).decode()

    print(flag)

if __name__ == "__main__":
    print(m_func(6))
    #sol = m_func(ITERS)
    #decrypt_flag(sol)
