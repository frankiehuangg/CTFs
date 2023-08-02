from Crypto.PublicKey import RSA
from Crypto.Util.number import bytes_to_long, long_to_bytes

public = RSA.import_key(open('public.pem', 'rb').read())
private = RSA.import_key(open('private.pem', 'rb').read())
cipher = open('flag.enc', 'rb').read()
cipher = bytes_to_long(cipher)

n = public.n
e = public.e
d = private.d

text = pow(cipher, d, n)
print(long_to_bytes(text))
