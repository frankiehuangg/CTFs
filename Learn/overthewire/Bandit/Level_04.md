# Level 4 Solution

Password:

```txt
lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
```

Steps:

```bash
bandit4@bandit:~$ ls
inhere
bandit4@bandit:~$ cd inhere
bandit4@bandit:~/inhere$ ls
-file00  -file02  -file04  -file06  -file08
-file01  -file03  -file05  -file07  -file09
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file00
/home/bandit4/inhere/-file00: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file01
/home/bandit4/inhere/-file01: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file02
/home/bandit4/inhere/-file02: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file02
/home/bandit4/inhere/-file02: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file03
/home/bandit4/inhere/-file03: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file04
/home/bandit4/inhere/-file04: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file05
/home/bandit4/inhere/-file05: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file06
/home/bandit4/inhere/-file06: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file07
/home/bandit4/inhere/-file07: ASCII text
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file08
/home/bandit4/inhere/-file08: data
bandit4@bandit:~/inhere$ file /home/bandit4/inhere/-file09
/home/bandit4/inhere/-file09: Non-ISO extended-ASCII text, with no line terminators
bandit4@bandit:~/inhere$ cat /home/bandit4/inhere/-file07
lrIWWI6bB37kxfiCQZqUdOIYfr6eEeqR
```
