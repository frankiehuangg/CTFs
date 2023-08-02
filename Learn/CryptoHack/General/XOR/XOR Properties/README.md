# XOR Properties

## Description

Let's put this into practice! Below is a series of outputs where three random keys have been XOR'd together and with the flag. Use the above properties to undo the encryption in the final line to obtain the flag.

```
KEY1 = a6c8b6733c9b22de7bc0253266a3867df55acde8635e19c73313  
KEY2 ^ KEY1 = 37dcb292030faa90d07eec17e3b1c6d8daf94c35d4c9191a5e1e  
KEY2 ^ KEY3 = c1545756687e7573db23aa1c3452a098b71a7fbf0fddddde5fc1  
FLAG ^ KEY1 ^ KEY3 ^ KEY2 = 04ee9855208a2cd59091d04767ae47963170d1660df7f56f5faf
```

## Solution

Since the flag is encrypted using 3 keys, we need to XOR the ciphertext with the key itself (since `FLAG ^ KEY1 ^ KEY3 ^ KEY2 ^ KEY1 ^ KEY3 ^ KEY2 = FLAG`), we can either find the value of each key and XOR it with the flag, or we can XOR the `FLAG` with the XOR value of `KEY1` and `KEY2 ^ KEY3`.

## Flag

```txt
crypto{x0r_i5_ass0c1at1v3}
```
