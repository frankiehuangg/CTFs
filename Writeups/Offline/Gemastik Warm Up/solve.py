

with open("out.txt", 'r') as f:
    cipher = f.readline().split('-')

cipher = [len(s) for s in cipher][:-1]
print(len(cipher))
for t in cipher:
    print(t, end=' ')
print(cipher)
