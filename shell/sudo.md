# sudo

Execute commands as superuser in scripts
```shell
pwd             # /home/<user>
whoami          # <user>

sudo -i <<'EOF'
pwd               # /root
whoami            # root
EOF
```
