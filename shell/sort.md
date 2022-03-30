# sort

Sort lines by keys lexicographically (**numbers** > **uppercase characters** > **lowercase characters**).

* Specify field that should be used for sort criteria in field seperated text (similar to awk)

```shell
# sorts by file size
ls -l | sort -k 5 -n
```
