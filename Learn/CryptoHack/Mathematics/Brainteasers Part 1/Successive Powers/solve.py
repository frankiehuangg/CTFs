#!/bin/python3

arr = [588, 665, 216, 113, 642, 4, 836, 114, 851, 492, 819, 237]

# p > 851
# 114x == 851 mod p
# 113x == 642 mod p
# x == 209 mod p
# 
# 588x == 665 mod p
# 588(209) == 665 mod p
# 588(209) - 665 mod p == 0
# 122892 - 665 mod p == 0
# 122227 mod p == 0
#
# Now we find the factors of 122227, where 851 < p < 999
# We found p = 919
