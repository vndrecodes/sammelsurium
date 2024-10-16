# Change Hostname

1. `System Settings` > `General` > `About` > `Name`

2. In Terminal:
```bash
scutil --get HostName 
scutil --get LocalHostName 
scutil --get ComputerName

sudo scutil --set HostName <my_hostname>
sudo scutil --set LocalHostName <my_hostname>
sudo scutil --set ComputerName <my_hostname>

dscacheutil -flushcache
```
