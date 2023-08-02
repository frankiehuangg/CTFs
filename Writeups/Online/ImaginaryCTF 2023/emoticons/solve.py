import random
import string

emojis = [n for n in "🌸🍔🐳🚀🌞🎉🍦🎈🐶🍕🌺🎸⚡️🦋🌼🎁"]
emojis = emojis[0:13] + emojis[14:17]
cipher = open("out.txt", "r").read()
cipher = [cipher[i:i+2] for i in range(0, len(cipher), 2)]
set_cipher = list(set(cipher))

subs = string.ascii_uppercase + string.digits + string.punctuation

for i in range(len(cipher)):
    cipher[i] = subs[set_cipher.index(cipher[i])]

for e, c in zip(emojis, "0123456789abcdef"):
    flag = flag.replace(e, c)

print(set_cipher)
print(set_cipher.sort())

exit()

# 696374667b

flag = ''
while ('ictf{' not in flag):
    random.shuffle(emojis)

    flag = cipher
    for e, c in zip(emojis, "0123456789abcdef"):
        flag = flag.replace(e, c)

    flag = ''.join([chr(int(flag[i:i+2], 16)) for i in range(0, 8, 2)])

print(flag)
