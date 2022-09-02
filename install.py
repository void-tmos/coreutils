commands = {"cat", "cd", "clear", "cp", "echo", "getdir", "ls", "mkdir",
            "mv", "pwd", "rm", "touch", "whoami"}
for i in commands:
    run("cp /tmp/coreutils/%s /py/%s"%(i, i))
