---
id: oracle
summary: Setup containerized oracle-xe instance
categories: docker
tags: docker, database, sql, oracle
published: 2020-09-04
author: vndrecodes

---

# Complete oracle-xe docker setup

## Prerequisites

### Software
* Docker engine [install-using-the-convenience-script](https://docs.docker.com/engine/install/debian/#install-using-the-convenience-script)
  * There some issues building the oracle image w. the docker snap installation. Install docker with the convenince script instead.
* Oracle Docker repository [oracle /
docker-images](https://github.com/oracle/docker-images)


## Installing

### Docker

Download and install convenince install script
```bash
$ curl -fsSL https://get.docker.com -o get-docker.sh
$ sudo sh get-docker.sh

# Add <user> to sudoers
$ sudo usermod -aG docker <user>
```


### Oracle-xe

Clone oracle docker-images repo
```shell
$ git clone https://github.com/oracle/docker-images.git
```

Change to `docker-images/OracleDatabase/SingleInstance/dockerfiles/` directory. To build the image run:
```shell
$ ./buildDockerImage.sh -v 18.4.0 -x
```
This will take some time (~20min).


## Run

### Run container
```shell
$ docker run --name myxedb -d -p 51521:1521 -p 55500:5500 -e ORACLE_PWD=passwd -e ORACLE_CHARACTERSET=AL32UTF8 oracle/database:18.4.0-xe
```


Output on first run (truncated):

>ORACLE PASSWORD FOR SYS AND SYSTEM: passwd
>
>Specify a password to be used for database accounts. Oracle recommends that the password entered should be at least 8 characters in length, contain at least 1 uppercase character, 1 lower case character and 1 digit [0-9]. Note that the same password will be used for SYS, SYSTEM and PDBADMIN accounts:
>
>Confirm the password:


### Connect via sqlplus (from container)

bashing into container
```shell
$ docker exec -it <container_name> bash
```

Connect w. sqlplus.
This users can see the tables from the `./startup/` init script.
```shell
# (CBD)
$ sqlplus sys/<your password>@//localhost:1521/XE as sysdba

# Or (CBD)
$ sqlplus system/passwd@//localhost:1521/XE

# Or (PDB)
$ sqlplus sys@XEDB1 as sysdba
$ sqlplus pdbadmin/passwd@//localhost:1521/XEPDB1
$ sqlplus sys/passwd@//localhost:1521/XEPDB1
```


## Useful

### Running scripts after setup and on startup
Make sure you're mounting directories to directories! Otherwise the container instantiation fails w.:
>  ...Are you trying to mount a directory onto a file (or vice-versa)?

```shell
 docker run \
  --name myxedb \
  -d \
  -v /<path_to_your_directory>:/opt/oracle/scripts/startup \
  -v /<path_to_your_directory>:/opt/oracle/scripts/setup \
  -p 51521:1521 \
  -p 55500:5500 \
  -e ORACLE_PWD=passwd \
  -e ORACLE_CHARACTERSET=AL32UTF8 \
  oracle/database:18.4.0-xe
```

The scripts in the `startup` and `setup` directory will be executed alphabetically.

### Changing the admin accounts passwords

```shell
$ docker exec <container_name> ./setPassword.sh <password>
```


### Build image from container
Put changes from a container as an layer on top of the image.
```shell
$ docker commit <container_name> <image_name>
```


### Import / Export image
Export:
```shell
$ docker save -o <export_file.tar> <image_name>
```

Import
```shell
$ docker load -i <import_file.tar>

```

## References

[Deliver Oracle Database 18c Express Edition in Containers][ora1]

[Oracle Docker][ora2]

[Why the Oracle database is slow when using the docker?][ora3]

[xe-11g Custom DB Initialization Example][ora4]

[Initialization of schema during oracle initialization using docker file][ora5]

[Update instructions for Oracle-XE to create a new image after first-run of Oracle XE][ora6]

[Oracle Database on Docker - Best Practices][ora7]

[Dockerizing Oracle Database][ora8]






[ora1]: https://blogs.oracle.com/oraclemagazine/deliver-oracle-database-18c-express-edition-in-containers "Deliver Oracle Database 18c Express Edition in Containers"

[ora2]: https://github.com/oracle/docker-images/tree/master/ "Official source for Docker configurations, images, and examples of Dockerfiles for Oracle products and projects"

[ora3]: https://bigdata-etl.com/solved-why-is-the-oracle-database-is-slow-when-using-the-docker/amp/ "Why the Oracle database is slow when using the docker?"

[ora4]: https://github.com/burakince/docker-oracle-xe-11g-custom-db-Initialization-example "xe-11g Custom DB Initialization Example"

[ora5]: https://stackoverflow.com/questions/32033998/initialization-of-schema-during-oracle-initialization-using-docker-file "Initialization of schema during oracle initialization using docker file"

[ora6]: https://github.com/testcontainers/testcontainers-java/issues/1892 "Update instructions for Oracle-XE to create a new image after first-run of Oracle XE"

[ora7]: https://de.slideshare.net/gvenzl/oracle-database-on-docker-best-practices-92806097 "Oracle Database on Docker - Best Practices"

[ora8]: https://de.slideshare.net/gvenzl/dockerizing-oracle-database "Dockerizing Oracle Database"
