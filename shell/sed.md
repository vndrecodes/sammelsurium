# stream editor

Replace strings

```shell
$ echo "hello world" | sed "s/hello/hallo/g"
```

```shell
# Prefix match with string
sed -E "s/(my match)/my prefix to match \1/g" file.txt
```


[sed1]: https://linuxhint.com/50_sed_command_examples/ "50_sed_command_examples"
