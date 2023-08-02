#!/usr/bin/python3
from sage.all_cmdline import *

v = vector([2, 6, 3])
w = vector([1, 0, 0])
u = vector([7, 7, 2])

print(3 * (2 * v - w) * 2 * u)
print(w*u)
