---
id: linux-useful
summary: List of useful linux commands
categories: linux
tags: linux, bash
published: 2021-06-26
author: vndrecodes

---

# Useful Commmands

## Logs
```shell
$ journalctl              # systemd journal

$ cat /var/log/syslog     # everything except auth
$ cat /var/log/auth.log   #
$ cat /var/log/boot.log   # boot process
$ cat /var/log/dmseg      # hardware & device
```
