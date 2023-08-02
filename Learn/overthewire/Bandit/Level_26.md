# Level 26 Solution

Password:

```txt
YnQpBuifNMas1hcUFk70ZmqkhUU2EuaS
```

Steps:

Similar to the previous challenge, we need to spawn a shell within vim

```vim
:set shell=/bin/bash
:shell
```

Then use the provided binary to get the password

```bash
bandit26@bandit:~$ ./bandit27-do cat /etc/bandit_pass/bandit27
YnQpBuifNMas1hcUFk70ZmqkhUU2EuaS
```
