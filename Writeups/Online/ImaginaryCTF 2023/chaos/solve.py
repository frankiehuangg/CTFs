import re
from gmpy2 import iroot

x = open('chall.py', 'r').read()

g=re.findall(r"(\[n for n in \(\)\.__class__\.__base__\.__subclasses__\(\) if \"rni\" in n\.__name__ and n\.__name__ == n\.__name__\.lower\(\)\]\[0\]\(\)\._module\.__builtins__\.__getitem__\(\".+?\"\),\"(.+?)\"\).decode\(\))",x)
for i in g:
    exec(f"w=bytes.fromhex(\"{i[1]}\")")
    x=x.replace(i[0],f"{w}")

g=re.findall(r"__getitem__\(b'globals'\)\(\)\.__getitem__\(b'inp'\)\.__getitem__\((\d+?\^\d+?)\)\.__pow__\((\d+?)\)\.__eq__\((\d+?)\)",x)
inp=bytearray([1]*51)
for i in g:
    inp[eval(i[0])]=int(iroot(eval(i[2]),eval(i[1]))[0])
print(inp)

