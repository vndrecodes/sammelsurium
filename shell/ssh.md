# ssh

## Identify
```shell
# Copy public key to remote host
$ ssh-copy-id -i ~/.ssh/<mykey> <user>@<host>
```

## Exec script remote
```shell
$ ssh user@host "uptime; hostname"

$ ssh user@host \
  "date; \
  uname; \
  uptime;\
  hostname;"

$ ssh user@host << EOF
uptime
uname
hostname
pwd
who
EOF

echo "date; uptime; who;" | ssh user@host
```

## Hardening

Change default configuration of SSH at `/etc/ssh/`

```shell
$ nano /etc/ssh/sshd_config

# PermitRootLogin no

# AllowUsers [<user>]


# Restrict changes to sshd_config to root
$ sudo chown root:root /etc/ssh/sshd_config
$ sudo chmod 600 /etc/ssh/sshd_config
```
