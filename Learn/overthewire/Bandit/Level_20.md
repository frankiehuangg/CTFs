# Level 20 Solution

Password:

```txt
NvEJF7oVjkddltPSrdKEFOllh9V1IBcq
```

Steps:

```bash
bandit20@bandit:~$ tmux
# CTRL+B , "
```

Terminal 1

```bash
bandit20@bandit:~$ nc -l -p 1234
VxCazJaVykI6W36BkBU0mJTCM8rR95XT
NvEJF7oVjkddltPSrdKEFOllh9V1IBcq
```

Terminal 2

```bash
bandit20@bandit:~$ ./suconnect 1234
Read: VxCazJaVykI6W36BkBU0mJTCM8rR95XT
Password matches, sending next password
```
