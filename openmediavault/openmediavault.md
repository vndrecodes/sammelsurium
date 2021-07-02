---
id: omv
summary: openmediavault handy commands
categories: linux
tags: openmediavault, smb
published: 2021-06-17
author: vndrecodes

---

# openmediavault useful commands

```shell
# Prepare disks

$ fdisk /dev/sdX
$ d               # delete partition
$ w               # write changes
```

```shell
sudo mount -t cifs -o uid=<linuxuser>,gid=<linuxgroup>,username=<omvuser>,dir_mode=0770,file_mode=0770 //omv.local/<sharename> /mnt/<mountpoint>/
```
