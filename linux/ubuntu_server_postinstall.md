# Postinstall routines

## Init

### Host informations
* Machine name
* IP address
* Mac address
* Default user
* Date
* Asset Number (If you’re working for a company, then you need to include the asset number that your company uses for tagging hosts.)


## Essential Packages
```shell
$ sudo apt install -y \
  net-tools \
  git \
  curl \
  htop \
  openssh-server \
  lm-sensors
```


## Firewall
```shell
$ sudo ufw enable
```
