# cut
Split lines into sections (similar to awk)

* Split at . and return index 2 (world)
```shell
$ echo "Hello.world" | cut -d '.' -f2
```

* Print first column only
```shell
$ cut -d ":" -f1 file.txt
```

* Print 1st and 7th column
```shell
$ cut -d ":" -f1,7 file.txt
```

* `--output-delimiter=DELIMITER` replace `:` w. `-` in output file
```shell
$ cut -d ":" -f1,7 --output-delimiter="-" file.txt
```


[awk, sed, cut and tr: processing a text file](https://rs1.es/tutorials/2021/08/26/awk-sed-cut-tr.html)
