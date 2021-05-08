#!/bin/bash

check_hosts()
{
  ping -c 1 $1 > /dev/null
  [ $? -eq 0 ] && echo Host: $i online.
}

for i in 192.168.0.{1..255}
do
check_hosts $i & disown
done
