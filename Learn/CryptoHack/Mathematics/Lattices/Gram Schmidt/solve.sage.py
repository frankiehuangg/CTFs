

# This file was *autogenerated* from the file ./solve.sage
from sage.all_cmdline import *   # import sage library

_sage_const_4 = Integer(4); _sage_const_1 = Integer(1); _sage_const_3 = Integer(3); _sage_const_2 = Integer(2); _sage_const_0 = Integer(0); _sage_const_7 = Integer(7); _sage_const_6 = Integer(6); _sage_const_9 = Integer(9); _sage_const_5 = Integer(5)#!/usr/bin/sage

vec = [vector([_sage_const_4 , _sage_const_1 , _sage_const_3 , -_sage_const_1 ]), 
	   vector([_sage_const_2 , _sage_const_1 , -_sage_const_3 , _sage_const_4 ]), 
	   vector([_sage_const_1 , _sage_const_0 , -_sage_const_2 , _sage_const_7 ]), 
	   vector([_sage_const_6 , _sage_const_2 , _sage_const_9 , -_sage_const_5 ])]

orth = [_sage_const_0 , _sage_const_0 , _sage_const_0 , _sage_const_0 ]

for i in range(_sage_const_4 ):
	orth[i] = vec[i]
	
	for j in range(_sage_const_0 , i):
		mu = (vec[i] * orth[j]) / (orth[j] * orth[j])

		orth[i] = orth[i] - mu * orth[j]

print(float(orth[_sage_const_3 ][_sage_const_1 ]))

print(orth)

B = Matrix([
[_sage_const_4 , _sage_const_1 , _sage_const_3 , -_sage_const_1 ],
[_sage_const_2 , _sage_const_1 , -_sage_const_3 , _sage_const_4 ],
[_sage_const_1 , _sage_const_0 , -_sage_const_2 , _sage_const_7 ],
[_sage_const_6 , _sage_const_2 , _sage_const_9 , -_sage_const_5 ]])

print(B.gram_schmidt())

