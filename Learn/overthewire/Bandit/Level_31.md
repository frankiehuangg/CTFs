# Level 31 Solution

Password:

```txt
rmCBvG56y58BXzv98yZGdO7ATVL5dW8y
```

Steps:

```bash
bandit31@bandit:~$ mktemp -d
/tmp/tmp.axrEbhIITC
bandit31@bandit:~$ cd /tmp/tmp.axrEbhIITC
bandit31@bandit:/tmp/tmp.axrEbhIITC$ git clone ssh://bandit31-git@localhost:2220/home/bandit31-git/repo
Cloning into 'repo'...
The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Could not create directory '/home/bandit31/.ssh' (Permission denied).
Failed to add the host to the list of known hosts (/home/bandit31/.ssh/known_hosts).
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit31-git@localhost's password: 
remote: Enumerating objects: 4, done.
remote: Counting objects: 100% (4/4), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (4/4), 381 bytes | 381.00 KiB/s, done.
bandit31@bandit:/tmp/tmp.axrEbhIITC$ ls
repo
bandit31@bandit:/tmp/tmp.axrEbhIITC$ cd repo
bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ ls
README.md
bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ cat README.md 
This time your task is to push a file to the remote repository.

Details:
    File name: key.txt
    Content: 'May I come in?'
    Branch: master

bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ echo May I come in? > key.txt
bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ git add key.txt
The following paths are ignored by one of your .gitignore files:
key.txt
hint: Use -f if you really want to add them.
hint: Turn this message off by running
hint: "git config advice.addIgnoredFile false"
bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ ls -la
total 24
drwxrwxr-x 3 bandit31 bandit31 4096 Jun 29 17:59 .
drwx------ 3 bandit31 bandit31 4096 Jun 29 17:58 ..
drwxrwxr-x 8 bandit31 bandit31 4096 Jun 29 18:00 .git
-rw-rw-r-- 1 bandit31 bandit31    6 Jun 29 17:58 .gitignore
-rw-rw-r-- 1 bandit31 bandit31   15 Jun 29 17:59 key.txt
-rw-rw-r-- 1 bandit31 bandit31  147 Jun 29 17:58 README.md
bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ vim .gitignore
bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ git status
On branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
	modified:   .gitignore

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	key.txt

no changes added to commit (use "git add" and/or "git commit -a")
bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ git add key.txt .gitignore ; git commit -m "add key"
[master e463355] add key
 2 files changed, 1 insertion(+), 1 deletion(-)
 create mode 100644 key.txt
bandit31@bandit:/tmp/tmp.axrEbhIITC/repo$ git push origin master
The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Could not create directory '/home/bandit31/.ssh' (Permission denied).
Failed to add the host to the list of known hosts (/home/bandit31/.ssh/known_hosts).
                         _                     _ _ _   
                        | |__   __ _ _ __   __| (_) |_ 
                        | '_ \ / _` | '_ \ / _` | | __|
                        | |_) | (_| | | | | (_| | | |_ 
                        |_.__/ \__,_|_| |_|\__,_|_|\__|
                                                       

                      This is an OverTheWire game server. 
            More information on http://www.overthewire.org/wargames

bandit31-git@localhost's password: 
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 2 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (4/4), 329 bytes | 329.00 KiB/s, done.
Total 4 (delta 0), reused 0 (delta 0), pack-reused 0
remote: ### Attempting to validate files... ####
remote: 
remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
remote: 
remote: Well done! Here is the password for the next level:
remote: rmCBvG56y58BXzv98yZGdO7ATVL5dW8y 
remote: 
remote: .oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
remote: 
To ssh://localhost:2220/home/bandit31-git/repo
 ! [remote rejected] master -> master (pre-receive hook declined)
error: failed to push some refs to 'ssh://localhost:2220/home/bandit31-git/repo'
```
