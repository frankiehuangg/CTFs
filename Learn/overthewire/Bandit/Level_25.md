# Level 25 Solution

Password:

```txt
c7GvcKlw9mC7aUQaPx7nwFstuAIBw1o1
```

Steps:

```bash
bandit25@bandit:~$ ssh -i bandit26.sshkey bandit26@localhost -p 2220 
The authenticity of host '[localhost]:2220 ([127.0.0.1]:2220)' can't be established.
ED25519 key fingerprint is SHA256:C2ihUBV7ihnV1wUXRb4RrEcLfXC5CXlhmAAM/urerLY.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
```

Make the window as small as possible, then `more` should be running.

```vim
v
:e /etc/bandit_pass/bandit26
```
