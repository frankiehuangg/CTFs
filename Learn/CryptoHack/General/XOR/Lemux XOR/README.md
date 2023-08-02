# Lemur XOR

## Description

I've hidden two cool images by XOR with the same secret key so you can't see them!

**Challenge files:**\
\- [lemur.png](https://cryptohack.org/static/challenges/lemur\_ed66878c338e662d3473f0d98eedbd0d.png)\
\- [flag.png](https://cryptohack.org/static/challenges/flag\_7ae18c704272532658c10b5faad06d74.png)

## Solution

We can solve this problem using the python library `cv2` by using `cv2.bitwise_xor(flag, lemur)`. The flag can be seen in the resulting image file.

## Flag

```txt
crypto{X0Rly_n0t!}
```
