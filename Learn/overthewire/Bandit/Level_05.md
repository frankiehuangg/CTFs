# Level 5 Solution

Password:

```txt
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
```

Steps:

```bash
bandit5@bandit:~$ ls
inhere
bandit5@bandit:~$ cd inhere
bandit5@bandit:~/inhere$ find ./ -type f -and ! -executable -and -size 1033c
./maybehere07/.file2
bandit5@bandit:~/inhere$ cat ./maybehere07/.file2
P4L4vucdmLnm8I7Vl7jG1ApGSfjYKqJU
```
