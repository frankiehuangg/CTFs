# Base64

## Description

Take the below hex string, _decode_ it into bytes and then _encode_ it into Base64.

`72bca9b68fc16ac7beeb8f849dca1d8a783e8acf9679bf9269f7bf`

## Solution

Using the library `base64`, we can decode the string to bytes using `bytes.fromhex(s)` for the string `s` above, and then from bytes we encode it to base 64 with `base64.b64encode(s)`.

## Flag

```txt
crypto/Base+64+Encoding+is+Web+Safe/
```
