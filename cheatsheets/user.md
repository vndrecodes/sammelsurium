# User

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

### Add user to sudoers
```shell
$ usermod -aG sudo <username>
```
