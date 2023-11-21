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

## User

### Add new user
`--home` Override default home directory for new user
```shell
$ adduser -d /home/<username> <username>
```

### Change users password (interactive)
```shell
$ passwd <username>
```

### Helper binary that creates home directories
```shell
$ mkdhomedir_helper <username>
```

### Manpages
```shell
$ man -k <keyword>    # Search for keyowrd within manpages (similar to apropos)
```
```shell
$ info <command>      # Similar to man command
```

### Networking
* `dig` -
* `host` -
* `nslookup` -
* `whois` -
* `traceroute` - print the route packets take to network host
* `cat < /dev/tcp/localhost/80` - Check if a port is reachable on a host
