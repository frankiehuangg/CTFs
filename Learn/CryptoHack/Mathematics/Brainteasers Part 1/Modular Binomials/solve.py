#!/usr/bin/python3

from math import gcd

with open('data.txt', 'r') as f:
    n, e1, e2, c1, c2 = f.read().split('\n', 4)

    n = int(n.lstrip('N = '))
    e1 = int(e1[5:])
    e2 = int(e2[5:])
    c1 = int(c1[5:])
    c2 = int(c2[5:])

# n = pq
# c1 = (2p + 3q)**e1 mod n
# c2 = (5p + 7q)**e2 mod n

# q1 = c1 ** e2 = (2p+3q)**(e1e2) mod n
# q2 = c2 ** e1 = (5p+7q)**(e1e2) mod n
# d = 5**(e1e2) * q1 - 2**(e1e2) * q2
# d = (10p + 15q)**(e1e2) mod n - (10p + 14q)**(e1e2) mod n
# d = (10p + 15q)**(e1e2) - (10p+14q)**(e1e2) mod n
# d = q(p**e1e2 + ... + q**(e1e2-1))
# gcd(d, n) = q
# p = n//q

q1 = pow(c1, e2, n)
q2 = pow(c2, e1, n)

d = pow(5, e1*e2, n) * q1 - pow(2, e1 * e2, n) * q2
q = gcd(d, n)
p = n//q

assert p*q == n

print('crypto{' + str(p) + ',' + str(q) + '}')
