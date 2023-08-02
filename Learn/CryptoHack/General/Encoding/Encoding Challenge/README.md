# Encoding Challenge

## Description

Connect at `nc socket.cryptohack.org 13377`

**Challenge files:**\
\- [13377.py](https://cryptohack.org/static/challenges/13377\_43de0a0efed6ed7bd890d1c79db22fb1.py)\
\- [pwntools\_example.py](https://cryptohack.org/static/challenges/pwntools\_example\_f93ca6ccef2def755aa8f6d9aa6e9c5b.py)\
\- [telnetlib\_example.py](https://cryptohack.org/static/challenges/telnetlib\_example\_5b11a835055df17c7c8f8f2a08782c44.py)

## Solution

By modifying the `pwntools_example.py` file provided, we can check what kind of challenge sent and respond correspondingly. For this, we receive and sent the json payload 100 times, then receive one last json file to get the flag.

## Flag

```txt
crypto{3nc0d3_d3c0d3_3nc0d3}
```
