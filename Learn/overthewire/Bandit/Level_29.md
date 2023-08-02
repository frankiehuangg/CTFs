# Level 29 Solution

Password:

```txt
xbhV3HpNGlTIdnjUrdAlPzc2L6y9EOnS
```

Steps:

```bash
bandit29@bandit:~$ mktemp -d
/tmp/tmp.YYM25skIiA
bandit29@bandit:~$ cd /tmp/tmp.YYM25skIiA
bandit29@bandit:/tmp/tmp.YYM25skIiA$ git clone ssh://bandit29-git@localhost:2220/home/bandit29-git/repo
Cloning into 'repo'...
The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Could not create directory '/home/bandit29/.ssh' (Permission denied).
Failed to add the host to the list of known hosts (/home/bandit29/.ssh/known_hosts).
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit29-git@localhost's password: 
remote: Enumerating objects: 16, done.
remote: Counting objects: 100% (16/16), done.
remote: Compressing objects: 100% (11/11), done.
remote: Total 16 (delta 2), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (16/16), done.
Resolving deltas: 100% (2/2), done.
bandit29@bandit:/tmp/tmp.YYM25skIiA$ ls
repo
bandit29@bandit:/tmp/tmp.YYM25skIiA$ cd repo
bandit29@bandit:/tmp/tmp.YYM25skIiA/repo$ ls
README.md
bandit29@bandit:/tmp/tmp.YYM25skIiA/repo$ cat README.md 
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: <no passwords in production!>
bandit29@bandit:/tmp/tmp.YYM25skIiA/repo$ git branch -r
  origin/HEAD -> origin/master
  origin/dev
  origin/master
  origin/sploits-dev
bandit29@bandit:/tmp/tmp.YYM25skIiA/repo$ git branch dev
bandit29@bandit:/tmp/tmp.YYM25skIiA/repo$ git pull origin dev
The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Could not create directory '/home/bandit29/.ssh' (Permission denied).
Failed to add the host to the list of known hosts (/home/bandit29/.ssh/known_hosts).
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit29-git@localhost's password: 
From ssh://localhost:2220/home/bandit29-git/repo
 * branch            dev        -> FETCH_HEAD
Updating 4bd5389..13e7356
Fast-forward
 README.md         | 2 +-
 code/gif2ascii.py | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)
 create mode 100644 code/gif2ascii.py
bandit29@bandit:/tmp/tmp.YYM25skIiA/repo$ ls
code  README.md
bandit29@bandit:/tmp/tmp.YYM25skIiA/repo$ cat README.md 
# Bandit Notes
Some notes for bandit30 of bandit.

## credentials

- username: bandit30
- password: xbhV3HpNGlTIdnjUrdAlPzc2L6y9EOnS
```
