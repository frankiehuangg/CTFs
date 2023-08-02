from sage.all import *

# Find a, where a^power mod modulo = result
def modular_root(power, result, modulo):
    # Check if square root exist, if not return -1
    # legendre == kronecker
    if (kronecker(result, modulo) == -1):
        print(power, '\t\t', result)
        return []

    # Find the square root modulo
    # s = mod(result, modulo).sqrt()
    s = Zmod(modulo)(result).sqrt()

    # If power is 2 (since 65536 = 2^16 so always meet this value) then we return the value of a, where a^16 mod modulo = result
    
    # There are two possibilities:
    # modulo root is s
    # modulo root is modulo-s
    #
    # for example, a**2 = 19 mod 25
    # we can find that a = 12 and 13 or a = 8 and a = 17
    # Hence we return [12, 13]
    if (power == 2):
        return [s, modulo-s]
    else:
        return modular_root(power//2, s, modulo) + modular_root(power//2, modulo-s, modulo)


n = 996905207436360486995498787817606430974884117659908727125853
e = 65537
c = 375444934674551374382922129125976726571564022585495344128269

# Since n is small, we can quickly factor the value using an online tool
p = 861346721469213227608792923571
q = 1157379696919172022755244871343

# Now, we use CRT to calculate a1 and a2 respectively
a1 = modular_root(e-1, c, p)
print("A2")
a2 = modular_root(e-1, c, q)

print(a1)
print(a2)

for i in a1:
    for j in a2:
        print(int(
            crt(
                [int(i), int(j)],
                [p, q]
                )).to_bytes(25, 'big'))
