# You either know, XOR you don't

## Description

I've encrypted the flag with my secret key, you'll never be able to guess it.

`0e0b213f26041e480b26217f27342e175d0e070a3c5b103e2526217f27342e175d0e077e263451150104`

## Solution

First, we need to convert the integer above to bytes. By guessing that the plaintext starts with `crypto{`, we can get the secret key by XOR-ing the cyphertext (since `plain ^ key = cipher`, `cipher ^ key = plain ^ key ^ key` = `cipher ^ key = plain`). Our guess returns the value `myXORke` and returns a random value after the 7th character. By guessing that the key is `myXORkey`, we will get the correct plaintext.

## Flag

```txt
crypto{1f_y0u_Kn0w_En0uGH_y0u_Kn0w_1t_4ll}
```
