
#from pwn import *
#
#p = process("rev")
#
#p.sendline(b'haha')
#p.stdin.close()
#
#c = process("cat", stdin=p.stdout)
#c.wait_for_close()
#
#c.interactive()
#
#exit()

start = 54
finish = start + 6

with open(f"Level {start:03d}-{finish:03d}.md", "w") as f:
    f.write(f"# Program Interaction {start}-{finish}\n\n")

    for i in range(start, finish+1):
        f.write(f"## Level {i}\n\n")
        f.write("Steps:\n\n")
        f.write("Create a `.py` file\n\n")
        f.write("```python\n\n```\n\n")
        f.write("Then run\n\n")
        f.write(f"```bash\nhacker@program-interaction-level-{i}:~/Documents$ python main.py\n```\n\n")
        # f.write("Then run `bash my_script.sh`\n\n")

    f.close()
