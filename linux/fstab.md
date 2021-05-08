# /etc/fstab

```shell
# fstab etnries by disk label

/dev/disk/by-label/data_0 /mnt/data_0     auto nosuid,nodev,nofail,x-gvfs-show 0 0
/dev/disk/by-label/data_1 /mnt/data_1     auto nosuid,nodev,nofail,x-gvfs-show 0 0
/dev/disk/by-label/data_2 /mnt/data_2     auto nosuid,nodev,nofail,x-gvfs-show 0 0
LABEL=data-large          /mnt/data-large auto nosuid,nodev,nofail,x-gvfs-show 0 0
```
