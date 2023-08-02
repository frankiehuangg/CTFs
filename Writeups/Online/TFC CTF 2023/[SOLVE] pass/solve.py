import string

def encrypt(char):
    if (char == '{' or char == '}'):
        char = ord('Z')
    else:
        char = ord(char)
        
    return (char + 7) ^ 11

def decrypt(char):
    char = chr((ord(char) ^ 11) - 7)

    if (char == 'Z'):
        return '{'
    return char

cipher = 'PziP97vkc5sA6oJM0KwWEnQX2OFaH0nAFTuS42myr31GYbJIfBSdAFWsLpx8N0v4PzO7aIVQaHrVq6AW8c1K5ZyFXzMeRAOiJ2nWXYy2Pj7x96RzkcA3inNqlDOBLKZ4rNFYGTn0Cl5U9aX2WIH1cOyIbm2AZ0k31u7FrxBECKPpMhYVUyvA5LfgXcW9eDSMTBlsorR22laXN3e8<qSCmwK0Do9bJzYvd5YgG3dRBhwMvOp2qS08UWQKtLQbphJTXLd2~fktr45ES7OK3x0yNqu1XSC9nA`rGpBvQlbDktjIxLm2KlVYnXw0mpt5aOe8B4grGXFe06gaZv3PYdpS4CDquJnmkR1Mn6sKScF3vV7pdzYfTkBRbqGbzu2wtPHkXsx1pK14ojTfJYIe0PpU1TjDKaW85uZ2mlFHYMSEkBvKo6WIdTnVRewMPk|3pU1SjNErN7s0HYlp9tMqAmBh0dXD4VaK8NZWU1fnrsQaEc5Bht09eHwxDSpWj0ahd5rtIzyKETxUq9CkXC8DAP37Kc1UqOvdb2GT0Yvxuh1grzfdR4JiVpo83QOEWlL2<Bt9Xm7Q5RNkljfOZogB8ctIzyra9wF0RKycTJjvZfDlm6o75QsG`2laXN3e85qSCmwK0Do9bJzYvdZE6'

flag = ''
for i in range(len(cipher) // 26):
    val = decrypt(cipher[26*i])
    print(val, end='')

# TFCCTFJf0und_th3_p44sv0rd
# TFCCTF{f0und_th3_p44sv0rd}

print(flag)
