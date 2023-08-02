from sage.all import *
from Crypto.Util.number import long_to_bytes
from math import sqrt, ceil

with open("output.txt", 'r') as f:
    p, c = f.read().split('\n', 1)

a = [int(x) for x in p.lstrip('Public key: [').rstrip(']').split(', ')]
c = int(c.split(' ')[2])
l = len(a)


N = 1

# arr = Matrix(ZZ, (2 * Matrix.identity(ZZ, l)).rows() + [vector(ZZ, [1 for x in range(l)])])
# L_h = [[i * N] for i in a]
# L_h.append([c * N])
# arr = arr.augment(Matrix(L_h))

arr = []
for i in range(l):
    temp = []
    
    for j in range(l):
        if (i == j):
            temp.append(2)
        else:
            temp.append(0)
    
    temp.append(a[i] * N)

    arr.append(temp)

temp = [1 for i in range(l)]
temp.append(c * N)
arr.append(temp)

arr = Matrix(arr).LLL()

# print(arr)

arr = arr.LLL()

i = 0
for row in arr:
    print(i)
    i += 1
    if (row[-1] != 0):
        continue
    if (not all([x == 1 or x == -1 for x in row[:-1]])):
        continue

    value = [(-x+1)//2 for x in row]

    val = int(''.join([str(x) for x in reversed(value[:-1])]), 2)
    print(long_to_bytes(val).decode())
    break
