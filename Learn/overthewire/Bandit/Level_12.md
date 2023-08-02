# Level 12 Solution

Password:

```txt
wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw
```

Steps:

```bash
bandit12@bandit:~$ mktemp -d
/tmp/tmp.emoDsQeHsi
bandit12@bandit:~$ cd /tmp/tmp.emoDsQeHsi
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ cp ~/data.txt .
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ ls
data.txt
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ xxd -r data.txt out.txt

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file out.txt
out.txt: gzip compressed data, was "data2.bin", last modified: Sun Apr 23 18:04:23 2023, max compression, from Unix, original size modulo 2^32 581
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ mv out.txt out.gz
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ gzip -d out.gz

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file out
out: bzip2 compressed data, block size = 900k
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ bzip2 -d out
bzip2: Can't guess original name for out -- using out.out

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file out.out
out.out: gzip compressed data, was "data4.bin", last modified: Sun Apr 23 18:04:23 2023, max compression, from Unix, original size modulo 2^32 20480
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ mv out.out out.gz
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ gzip -d out.gz

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file out
out: POSIX tar archive (GNU)
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ tar -xvf out
data5.bin

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file data5.bin
data5.bin: POSIX tar archive (GNU)
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ tar -xvf data5.bin
data6.bin

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file data6.bin 
data6.bin: bzip2 compressed data, block size = 900k
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ bzip2 -d data6.bin
bzip2: Can't guess original name for data6.bin -- using data6.bin.out

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file data6.bin.out
data6.bin.out: POSIX tar archive (GNU)
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ mv data6.bin.out data6.tar
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ tar -xvf data6.tar
data8.bin

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file data8.bin
data8.bin: gzip compressed data, was "data9.bin", last modified: Sun Apr 23 18:04:23 2023, max compression, from Unix, original size modulo 2^32 49
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ mv data8.bin data8.gz
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ gzip -d data8.gz

bandit12@bandit:/tmp/tmp.emoDsQeHsi$ file data8
data8: ASCII text
bandit12@bandit:/tmp/tmp.emoDsQeHsi$ cat data8
The password is wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw
```
