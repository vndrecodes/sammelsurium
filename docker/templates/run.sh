#! /bin/bash

docker run -dit --rm --name "mycontainer-$(date "+%Y%m%d-%H_%M")" myuser/myrepository
