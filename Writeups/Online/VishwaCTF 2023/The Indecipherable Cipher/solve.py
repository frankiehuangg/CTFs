#!/usr/bin/python3

from Crypto.Util.number import inverse

def repeats(string):
    result = []

    for s in range(len(string)):
        for f in range(s, len(string)):
            substring = string[s:f]

            if (len(substring) <= 1):
                continue

            for s_check in range(f, len(string)):
                for f_check in range(s_check, len(string)):
                    check = string[s_check:f_check]

                    if (len(check) <= 1):
                        continue

                    # print(substring, '\t', check)

                    if (substring == check and len(substring) != 0 and substring not in result):
                        result.append(substring)

    return result

string = "j3qrh4kgz3iptmyqxcw0zkm8i5xugs5lwl0lrwvirwktlqinexcw0zkmq5nqvpebpor5wqipqhw2ikzm4ipktzlr"

res = repeats(string)

# ['ip', 'xc', 'xcw', 'xcw0', 'xcw0z', 'xcw0zk', 'xcw0zkm', 'cw', 'cw0', 'cw0z', 'cw0zk', 'cw0zkm', 'w0', 'w0z', 'w0zk', 'w0zkm', '0z', '0zk', '0zkm', 'zk', 'zkm', 'km', 'rw', 'kt', 'qi']
# res = [xcw0zkm, ip, rw, kt, qi] 
# distance = 33
# key length = 3 or 11 -> most likely 11

repeated = ['xcw0zkm', 'ip', 'rw', 'kt', 'qi']

"""
j3qrh4kgz3i
ptmyqxcw0zk
m8i5xugs5lw
l0lrwvirwkt
lqinexcw0zk
mq5nqvpebpo
r5wqipqhw2i
kzm4ipktzlr
"""

mapping = [chr(i) for i in range(97, 123)] # + [chr(i) for i in range(48, 58)]

full_map = [[mapping[(i+j) % len(mapping)] for i in range(len(mapping))] for j in range(len(mapping))]

def find_index(char):
    for i in range(len(mapping)):
        if (char == mapping[i]):
            return i

def decrypt(string, key):
    result = ""
    
    for i in range(len(string)):
        if (ord(string[i]) > 47 and ord(string[i]) < 58):
            result += string[i]
        else:
            result += full_map[find_index(string[i])][find_index(key[i % len(key)])]

    return result

while True:
    key = input("key: ")
    print(decrypt(string, key))
