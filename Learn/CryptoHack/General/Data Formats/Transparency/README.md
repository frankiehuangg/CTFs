# Transparency

## Description

Attached is an RSA public key in PEM format. Find the subdomain of cryptohack.org which uses these parameters in its TLS certificate, and visit that subdomain to obtain the flag.

**Challenge files:**\
\- [transparency.pem](https://cryptohack.org/static/challenges/transparency\_afff0345c6f99bf80eab5895458d8eab.pem)

## Solution

We can find the public key pair by using the `RSA.importKey()` function. Then, compare the value to the list of [CryptoHack's subdomains](https://subdomains.whoisxmlapi.com/lookup-report/aJRb4add5q) .

## Flag

```txt
crypto{thx_redpwn_for_inspiration}
```
