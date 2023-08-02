#!/usr/bin/python3

def decode(c):
    if (c == 'α'): return 'a'
    if (c == 'β'): return 'b'
    if (c == 'δ'): return 'd'
    if (c == 'ε'): return 'e'
    if (c == 'φ'): return 'f'
    if (c == 'γ'): return 'g'
    if (c == 'η'): return 'h'
    if (c == 'ι'): return 'i'
    if (c == 'χ'): return 'j'
    if (c == 'κ'): return 'k'
    if (c == 'λ'): return 'l'
    if (c == 'μ'): return 'm'
    if (c == 'ν'): return 'n'
    if (c == 'ο'): return 'o'
    if (c == 'π'): return 'p'
    if (c == 'ψ'): return 'q'
    if (c == 'ρ'): return 'r'
    if (c == 'σ'): return 's'
    if (c == 'τ'): return 't'
    if (c == 'υ'): return 'u'
    if (c == 'ς'): return 'v'
    if (c == 'ω'): return 'w'
    if (c == 'ξ'): return 'x'
    if (c == 'θ'): return 'y'
    if (c == 'ζ'): return 'z'
    else: return c


f = open('greek.txt', 'r')
txt = f.readline()

for i in range(len(txt)):
    print(decode(txt[i]), end='')
