* The apt get update/upgrade pendant
```shell
$ sudo softwareupdate -i -a
```

* Kill proc:
```shell
$ pkill Firefox
# killall <application> works as well (and kill <pid>...)
```

* Add ssh key on remote host:
```shell
$ ssh-add
# ssh-copy-id now works as well
$ ssh-copy-id -i ~/.ssh/<my_id_rsa>.pub user@example.com
```

* Compress file:
```shell
tar -cvzf tarballname.tar.gz file_or_directory
```

* Show listening ports:
```shell
$ lsof -i -P
```

*  macos microsoft sam:
```shell
$ say "hello world"
```

* Flush dns cache
```shell
$ dscacheutil -flushcache;
# or
$ sudo killall -HUP mDNSResponder;
```


* Show energy config
```shell
$ pmset -g
```

* Copy / paste - to / from clipboard
```shell
$ pbcopy    # Copy to clipboard
$ pbpaste   # Paste from clipboard
```


* Delete all *Desktop Services Store* files
```shell
$ sudo find / -name .DS_Store -delete; killall Finder
```





## References

[Mac keyboard shortcuts][appl1] - https://support.apple.com/en-us/HT201236


[appl1]: https://support.apple.com/en-us/HT201236 "Mac keyboard shortcuts"
