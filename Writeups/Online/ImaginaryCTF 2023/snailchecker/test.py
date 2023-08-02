import math

def josephify(n):
    ans = math.log(n, 2)
    ans = round(ans)
    l = n - 2 ** ans
    return 2 * l + 1

def enc(b):
    number = b[0]*2**24 + b[1]*2**16 + b[2]*2**8 + b[3] + 1
    print(number)

    return josephify(number)

print(enc(b'abcd'))
