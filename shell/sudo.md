# sudo

```shell
$ sudo -i   # Login shell, discards all environment, puts you to users home directory
$ sudo -s   # Inherits current environment, you'll stay in the working directory
```

* Execute commands as superuser in scripts
```shell
pwd             # /home/<user>
whoami          # <user>

sudo -i <<'EOF'
pwd               # /root
whoami            # root
EOF
```

* Add user to sudoers
```shell
$ usermod -aG sudo <username>
```
