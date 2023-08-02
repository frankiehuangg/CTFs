#!/usr/bin/sage

def gaussian(v1, v2):
	while (True):
		if (v2.norm() <= v1.norm()):
			v1, v2 = v2, v1

		m = round((v1 * v2) / (v1 * v1))

		if (m == 0):
			break;
		
		v2 = v2 - m * v1

	return v1, v2

v1 = vector([846835985, 9834798552])
v2 = vector([87502093, 123094980])

b1, b2 = gaussian(v1, v2)
print(b1 * b2)
