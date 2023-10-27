# ZFS

* import zfs-pool  
test: (removed 2 drives from truenas **w/o exporting** the pool! Imported pool on an ubuntu live usb stick, **latest non LTS** version due to zfs version mismatches)
```shell
# List pools
$ zpool import
# Output:
#    pool: test-pool
#    id: 4399...
#    state: ONLINE
#    status: The pool was last accessed by another system.
#    action: The pool can be imported using its name or numeric identifier and the '-f' flag.
#    see: https://openzfs.github.io/openzfs-docs/msg/ZFS-8000-EY
#    config:
#
#            test-pool                          ONLINE
#              9df6...                          ONLINE
#              74ce...                          ONLINE


# Import and mount pool
$ zpool import -fR /mnt test-pool
```