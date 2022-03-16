# awk
Works on records with delimiter separated fields

* Print specific columns
```shell
  # NF (number of fields) for last column
  $ awk '{print "My Prefix " $1,$3,$NF}' file.txt
```

* Prepend something at the beginning of a line
```shell
$ awk '{print "My Prefix " $0}' file.txt
```

* Specify a different separator
```shell
$ awk -F ":" '{print $1}'
$ awk -F "\t" '{print $1}'
```


[awk, sed, cut and tr: processing a text file](https://rs1.es/tutorials/2021/08/26/awk-sed-cut-tr.html)
