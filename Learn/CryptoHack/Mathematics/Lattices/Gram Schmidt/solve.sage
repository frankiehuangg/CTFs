#!/usr/bin/sage

vec = [vector([4, 1, 3, -1]), 
	   vector([2, 1, -3, 4]), 
	   vector([1, 0, -2, 7]), 
	   vector([6, 2, 9, -5])]

orth = [0, 0, 0, 0]

for i in range(4):
	orth[i] = vec[i]
	
	for j in range(0, i):
		mu = (vec[i] * orth[j]) / (orth[j] * orth[j])

		orth[i] = orth[i] - mu * orth[j]

print(float(orth[3][1]))
