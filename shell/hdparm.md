# hdparm

* get information about hard disks
``` shell
$ hdparm -I /dev/sdX
```

* secure erase
``` shell
# If hdd is in frozen state, suspend machine
$ hdparm --user-master u --security-set-pass llformat /dev/sdX
$ hdparm --user-master u --security-erase llformat /dev/sdX
```