# sed

* Replace strings (globally)
```shell
$ echo "hello world" | sed "s/hello/hallo/g"
```

*  Prefix match with string (globally)
```shell
# -E extendet regex
sed -E "s/(my match)/my prefix to match \1/g" file.txt
```

* Delete matching line
```shell
$ sed "/foo/d" file.txt
```

* Delete word (globally)
```shell
$ sed "s/foo//g" file.txt
```

* Delete empty lines
```shell
$ sed '/^$/d' file.txt
```


[50_sed_command_examples](https://linuxhint.com/50_sed_command_examples/)
[awk, sed, cut and tr: processing a text file](https://rs1.es/tutorials/2021/08/26/awk-sed-cut-tr.html)
