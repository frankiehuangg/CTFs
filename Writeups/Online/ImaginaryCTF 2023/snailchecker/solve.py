import math
import string

def msbPos(n):
    pos = 0
    while n != 0:
        pos += 1
        n = n >> 1
    return pos

def josephify(n):
    position = msbPos(n)
    j = 1 << (position - 1)
    n = n ^ j
    n = n << 1
    n = n | 1
    return n


# def josephify(n):
#     ans = math.log(n, 2)
#     ans = round(ans)
#     l = n - 2 ** ans
#     return 2 * l + 1

def enc(b):
    number = b[0]*2**24+b[1]*2**16+b[2]*2**8+b[3]

    val = josephify(number)
    if (val < 0):
        return number+val
    return val

out = b'L\xe8\xc6\xd2f\xde\xd4\xf6j\xd0\xe0\xcad\xe0\xbe\xe6J\xd8\xc4\xde`\xe6\xbe\xda>\xc8\xca\xca^\xde\xde\xc4^\xde\xde\xdez\xe8\xe6\xde'

out = [out[i:i+4] for i in range(0, len(out), 4)]

valid_char = string.ascii_lowercase + string.punctuation

flag = b''

for idx in range(len(out)):
    found = False
    for i in valid_char: 
        if not found:
            for j in valid_char:
                if not found:
                    for k in valid_char:
                        if not found:
                            for l in valid_char:
                                if not found:
                                    byte = (i + j + k + l).encode()

                                    val = bytes.fromhex(hex(enc(byte[::-1])-1)[2:].zfill(8))

                                    if (val == out[idx]):
                                        found = True 
                                        flag += byte

        if (found):
            break

    print(flag)

print(f"flag: {flag}")
