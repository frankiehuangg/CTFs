#!/usr/bin/sage

p = 861346721469213227608792923571
q = 1157379696919172022755244871343
c = 375444934674551374382922129125976726571564022585495344128269

# a ^ x = b mod m
# x = the power
# a = the integer a
# m = modulo
def sqrts(x, a, m):
	# Check if square root exist, if not return (-1)
	if kronecker(a, m) == -1 : 
		return []
	
	# Find the square root of a modulo m
	s = Zmod(m)(a).sqrt()

	# If x == 2 (the base, since 65536 = 2^16) return the value b, where b^16 = a mod p
	if (x == 2): 
		return [s, m-s]
	# If x != 2 keep recursive
	else:
		# x//2 -> dnc
		# s -> square root modulo m
		# m-s -> since s^2 mod m === (m-s)^2 mod m
		return sqrts(x//2, s, m) + sqrts(x//2, m-s, m)

# We calculate the value of a1, a2 where
# a1 = c^65536 mod p
# a2 = c^65536 mod q
# Then we can find the value m by chinese remainder theorem
# where we can calculate m if we know a1 and a2 by crt because p*q = n
# c = m^65536 mod n

# Since there are multiple possibilities of a1 and a2, we loop the array
a1 = sqrts(65536, c, p)
a2 = sqrts(65536, c, q)

print(a1)
print(a2)

for i in a1:
	for j in a2:
		print(int(
			# chinese remainder theorem
			crt(
				[int(i), int(j)], 
				[p, q]
			)).to_bytes(25, 'big'))
