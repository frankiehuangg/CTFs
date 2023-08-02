from random import randint

a = 288260533169915
p = 1007621497415251

FLAG = b'crypto{????????????????????}'


def encrypt_flag(flag):
    ciphertext = []
    plaintext = ''.join([bin(i)[2:].zfill(8) for i in flag]) # turn to binary
    print(plaintext)
    for b in plaintext:
        print(b)
        e = randint(1, p)   # e = random from 1 to p
        n = pow(a, e, p)    # n = a^e mod p
        if b == '1':                
            ciphertext.append(n)    # if b is 1, append n
        else:
            print(f'zero = {n}\t{-n}\t{-n % p}')
            n = -n % p              # else append -n % p
            ciphertext.append(n) 
    return ciphertext

print(encrypt_flag(b'AAAA'))
# print(encrypt_flag(FLAG))
