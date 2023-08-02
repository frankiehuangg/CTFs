from sage.all import *

output = """
(1842215985, 2774246364365481323465507413)
(1249123618, 1275483289000670998751518159)
""".lstrip('\n').rstrip('\n')

output = output.split('\n')
output = [output[i].lstrip('(').rstrip(')').split(', ') for i in range(len(output))]
output = [[int(output[i][0]), int(output[i][1])] for i in range(len(output))]

x = [output[i][0] for i in range(len(output))]
y = [output[i][1] for i in range(len(output))]

#mtx = Matrix([[pow(x[i], j) for i in range(len(x))] for j in range(len(y)+1)])

#x = [1, 2, 3, 4, 5]


print('calc inv')
mtrx = [[pow(x[_], j) % 1000000 for _ in range(len(x))] for j in range(1, len(y) + 1)]
mtrx = Matrix(mtrx).inverse()
y = vector(y)

for i in range(1, 10**6):
    temp = y-vector([i for _ in range(len(output))])

    if (i % 100 == 0):
        print(i)

    res = mtrx.solve_left(temp)
    #res = i
    #for j in range(0, len(y)):
    #    res += (mtrx[j][0] * temp[j])

    print(res)

    if (mtrx * res == temp):
        print(i)
        break
