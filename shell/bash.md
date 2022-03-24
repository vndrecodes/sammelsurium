# Basics
## Navigation

```shell
CTRL+A      # move to beginning of line
CTRL+B      # moves backward one character
CTRL+D      # deletes one character backward or logs out of current session, similar to exit
CTRL+E      # moves to end of line
CTRL+F      # moves forward one character
CTRL+H      # deletes one character under cursor (same as DELETE)
CTRL+K      # deletes (kill) forward to end of line
CTRL+T      # transposes two characters
CTRL+U      # kills backward from point to the beginning of line
CTRL+V      # makes the next character typed verbatim
CTRL+W      # kills the word behind the cursor

ALT+B       # moves backward one word
ALT+D       # deletes next word
ALT+F       # moves forward one word
ALT+T       # transposes two words
ALT+.       # pastes last word from the last command. Pressing it repeatedly traverses through command history.
ALT+U       # capitalizes every character from the current cursor position to the end of the word
ALT+L       # uncapitalizes every character from the current cursor position to the end of the word
ALT+C       # capitalizes the letter under the cursor. The cursor then moves to the end of the word.
ALT+R       # reverts any changes to a command you’ve pulled from your history if you’ve edited it.
```

## Tools

```shell
# System
$ uname -a   # List system information


$ hostname      # Display hostname
$ hostname -A   # All hostnames
$ hostname -I   # All host IP addresses

# logs
$ tail /var/log/syslog.log   # system log
$ tail /var/log/auth.log     # system log

# Hardware
$ lsusb       # Display USB devices
$ lsusb -tv   # verbose as tree


$ ps -u <username>   # list processes

$ whois <domain>     # gets whois information for domain

# Networking
$ dig <domain>    # gets DNS information for domain
$ dig -x <host>   # reverses lookup host


$ host <domain>   # DNS lookup

$ tcpdump -i eno1               # print packages on device eno1
$ tcpdump -i eno1 'port 8080'   # print traffic on port 8080


$ netstat -tulpen   # List listening ports
$ ss -nr4lp         # List listening ports


$ systemd-resolve --status   # network name resolution to local applications

# Process
$ ps -eF   # Print processes
$ ps T     # Print processes associated w. this terminal
```


## Variables

```shell
$ $()                        # command substitution
$ echo $(pwd)/file.md        # expands pwd (first evaluation), and evaluates the rest then

$ ``                         # backticks are the same as $()
$ echo `pwd`/file.md

$ ${}                        # expand a variable
$ MY_VARIABLE=foo
$ echo ${foo}

array[0]=valA                # define a array
array[1]=valB
array[2]=valC
array=([2]=valC [0]=valA [1]=valB)  # another way
array=(valA valB valC)              # and another

${array[i]}                  # displays array value for this index. If no index is supplied, array element 0 is assumed
${#array[i]}                 # to find out the length of any element in the array
${#array[@]}                 # to find out how many values there are in the array


# Associative Array
$ declare -A myArray
$ myArray[foo]=Foo
$ myArray[bar]=Bar
$ myArray[baz]=Baz
$ myArray[doe]=Doe


$ declare -A myArray=([foo]=Foo [bar]=Bar [baz]=Baz [doe]=Doe )

echo ${myArray[foo]}
echo ${myArray[doe]}


echo for key in "${myArray[@]}"; do echo $key; done   # Print keys
echo "${myArray[@]}"                                  # Print keys (oneline)
```


## Conditionals

```shell
# STRINGS

str1 == str2               # str1 matches str2
str1 != str2               # str1 does not match str2
str1 < str2                # str1 is less than str2 (alphabetically)
str1 > str2                # str1 is greater than str2 (alphabetically)
str1 \> str2               # str1 is sorted after str2
str1 \< str2               # str1 is sorted before str2
-n str1                    # str1 is not null (has length greater than 0)
-z str1                    # str1 is null (has length 0)

# FILES

-a file                   # file exists or its compilation is successful
-d file                   # file exists and is a directory
-e file                   # file exists; same -a
-f file                   # file exists and is a regular file (i.e., not a directory or other special type of file)
-r file                   # you have read permission
-s file                   # file exists and is not empty
-w file                   # your have write permission
-x file                   # you have execute permission on file, or directory search permission if it is a directory
-N file                   # file was modified since it was last read
-O file                   # you own file
-G file                   # file's group ID matches yours (or one of yours, if you are in multiple groups)
-z "string"               # string is empty
-n "string"               # string is not empty
file1 -nt file2           # file1 is newer than file2
file1 -ot file2           # file1 is older than file2

# NUMBERS

-lt                       # less than
-le                       # less than or equal
-eq                       # equal
-ge                       # greater than or equal
-gt                       # greater than
-ne                       # not equal


#       (1)       &&      (2)     ||       (3)
test -f ~/foofile && echo "found" || echo "not found"   
# test if file exists, if (1) is T then (2) T and (don't care)
# if (1) is F, the whole statement (1) && (2) is F, (3) can eval to T then

# test can be written as []
[ -f ~/foofile ] && echo "found"


A=1
B=2
[ "$A" -eq "$B" ] && echo "is equal" || echo "is not equal"

if condition
then
  statements
[elif condition
  then statements...]
[else
  statements]
fi

case expression in
  pattern1 )
    statements ;;
  pattern2 )
    statements ;;
esac
```

## Loops
```shell

for i in /etc/rc.*; do
  echo $i
done


for x in {1..10}
do
  statements
done


for name [in list]
do
  statements that can use $name
done


for (( initialisation ; ending condition ; update ))
do
  statements...
done

select name [in list]
do
  statements that can use $name
done


while condition; do
  statements
done


until condition; do
  statements
done


while :
do
  echo "Type 1 to proceed"
  read userinput
  if [[ $userinput -eq 1 ]]; then
    echo "$userinput"
    break
  fi
  echo "Try again"
done


cat file.txt | while read line; do
  echo $line
done


while true; do
  echo $(date)
done
```



## Redirections
```shell
cmd1|cmd2  # pipe; takes standard output of cmd1 as standard input to cmd2
< file     # takes standard input from file
> file     # directs standard output to file
>> file    # directs standard output to file; append to file if it already exists
>|file     # forces standard output to file even if noclobber is set
n>|file    # forces output to file from file descriptor n even if noclobber is set
<> file    # uses file as both standard input and standard output
n<>file    # uses file as both input and output for file descriptor n
n>file     # directs file descriptor n to file
n<file     # takes file descriptor n from file
n>>file    # directs file description n to file; append to file if it already exists
n>&        # duplicates standard output to file descriptor n
n<&        # duplicates standard input from file descriptor n
n>&m       # file descriptor n is made to be a copy of the output file descriptor
n<&m       # file descriptor n is made to be a copy of the input file descriptor
&>file     # directs standard output and standard error to file
<&-        # closes the standard input
>&-        # closes the standard output
n>&-       # closes the ouput from file descriptor n
n<&-       # closes the input from file descripor n
```


# Shell Debug
```shell
ash -n scriptname  # don't run commands; check for syntax errors only
set -o noexec       # alternative (set option in script)

bash -v scriptname  # echo commands before running them
set -o verbose      # alternative (set option in script)

bash -x scriptname  # echo commands after command-line processing
set -o xtrace       # alternative (set option in script)


$ set -x # Debug mode.
$ set -e # Exit on any non 0 exit code
$ set -u # Exit on any non defined variable




trap 'echo $varname' EXIT  # useful when you want to print out the values of variables at the point that your script exits

function errtrap {
  es=$?
  echo "ERROR line $1: Command exited with status $es."
}

trap 'errtrap $LINENO' ERR  # is run whenever a command in the surrounding script or function exits with non-zero status

function dbgtrap {
  echo "badvar is $badvar"
}

trap dbgtrap DEBUG  # causes the trap code to be executed before every statement in a function or script
# ...section of code in which the problem occurs...
trap - DEBUG  # turn off the DEBUG trap

function returntrap {
  echo "A return occurred"
}

trap returntrap RETURN  # is executed each time a shell function or a script executed with the . or source commands finishes executing
```
