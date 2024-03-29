# Cheatsheet

## Info
* Display system-wide information
``` bash
$ docker info
```


## System
* Show docker disk usage
```shell
$ docker system df --verbose
```


## Cleanup
* Remove all dangling stuff
```shell
$ docker system prune
```

* Clean build cache
```shell
$ docker builder prune
```

* Remove all unused volumes
```shell
$ docker volume prune
```

* Remove all dangling images
```shell
$ docker image prune  
```

* Remove everything
```shell
$ docker system prune --volumes
$ docker image prune -a
```

## Logs
View container logs in any terminal
```shell
docker logs <my-container>

# stream
docker logs --follow <my-container>
```


## API
```shell
# Running dockerd with TCP
$ sudo dockerd -H tcp://0.0.0.0:4243

# cURLing API
$ curl -X GET http://<host>:4243/containers/json
```

Enable Docker Remote API
```shell
# All the docker configurations are present in the file /lib/systemd/system/docker.service.
# Open the file/lib/systemd/system/docker.service, search for ExecStart and add value as shown below.
ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock
```

```shell
$ sudo systemctl daemon-reload
$ sudo service docker restart
```


## Handy commands
```shell
$ docker container rm $(docker container ls -a -q)  # Remove all containers
$ docker image rm $(docker image ls -a -q)          # Remove all images from this machine
$ docker rmi $(docker images -q)                    # Remove all images from this machine
```

```shell
$ docker secret create <secret_name> <path_to_secret>

$ docker config create <config_name> <path_to_config>
```

## Migrating
### Move container
```shell
$ docker export <container> | gzip > <container>.gz   # Export

$ zcat <container>.gz | docker import - <container>   # Import
```

### Move image
```shell
$ docker save <image> > <image>.tar   # Export

$ cat <image>.tar | docker load       # Import
```

## Compose
### Recreate container from images
```shell
$ docker-compose up --force-recreate
```

### List containers
```shell
$ docker-compose ps -a
```
