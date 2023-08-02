#!/usr/bin/python3

def extended_gcd(a, b):
    if (a == 0):
        return b, 0, 1

    gcd, temp_x, temp_y = extended_gcd(b % a, a)

    # at a particular point, we have u = p * v + q
    # where u is temp_y, p is (b // a), v is temp_x, and q is x 
    # repeat until it is in the form of p * u + q * v = gcd(p, q)

    x = temp_y - (b // a) * temp_x
    y = temp_x

    return gcd, x, y

p = 26513
q = 32321

print(extended_gcd(q, p))
