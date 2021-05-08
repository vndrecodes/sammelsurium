---
id: nextcloud
summary: Setup containerized nextcloud and mariadb instance
categories: docker
tags: docker, database, sql, mariadb, nextcloud
published: 2021-05-08
author: vndrecodes

---

# Setup a containerized nextcloud

## Prerequisites

### Docker

Install Docker and Docker-Compose:
1. Docker engine: [install-using-the-convenience-script](https://docs.docker.com/engine/install/debian/#install-using-the-convenience-script)
2. Docker-Compose: `sudo apt install docker-compose -y`


## Start docker containers (Nextcloud auto config)
1. Adjust `.env` with settings
2. Run containers `docker-compose up -d`
3. Set right ownership of nextcloud directory:
```shell
$ sudo chown -R www-data:www-data /var/www/nextcloud/
```
[Installation on Linux][nc3]



## Manual install

### Setup database
1. Log into database
``` shell
$ mysql -u root -p
```

2. Create database
```sql
CREATE DATABASE nextcloud;
```

3. Create user for `nextcloud` database:
``` SQL
CREATE USER 'nextclouduser'@'<host>' IDENTIFIED BY '<new_password>';
GRANT ALL ON nextcloud.* TO '<user>'@'<host>' IDENTIFIED BY '<new_password>' WITH GRANT OPTION;
FLUSH PRIVILEGES;
```
`<host>` should be the address from the client which connects to the database. In this case
the nextcloud app:
* `localhost` if it is the same machine and host os
* `172.18.0.X` if nextcloud runs inside a container and the database on the host


### Initial setup (Web Inferface)
These steps are only necessary if the auto configuration via the `.env` and `docker-compose.yml` file is ommitted.
>Database user: `<username>` (MYSQL_USER)  
>Database password: `<password>` (MYSQL_PASSWORD)  
>Database name: `<database_name>` (MYSQL_DATABASE)  
>Database host: `<docker_link_name>:3306` (MYSQL_HOST)  


## Bulk import data
1. Copy files into nextcloud data directory
``` shell
$ rsync -vru --progress <source_path> <path_to_nc_mountpoint>/data/<user>/files
```
2. Set right ownership of nextcloud directory:
```shell
$ sudo chown -R www-data:www-data /var/www/nextcloud/
```
3. Bashing into the container as `www-data` user
```shell
$ docker exec -it -u www-data <containe_name> bash
```
4. Locate `occ` executable, scan files
```shell
$ ./occ files:scan --all --verbose
```



## References

[Automated docker nextcloud for nginx proxy (webproxy) integrated with LetsEncrypt][nc1]

[Check the security of your private Nextcloud server][nc2]

[Docker Image of Nextcloud][nc4]

[Installation on Linux][nc3]

[nc1]: https://github.com/evertramos/docker-nextcloud-letsencrypt "Automated docker nextcloud for nginx proxy (webproxy) integrated with LetsEncrypt"

[nc2]: https://scan.nextcloud.com/ "Check the security of your private Nextcloud server"

[nc3]: https://docs.nextcloud.com/server/21/admin_manual/installation/source_installation.html#installation-wizard "Installation on Linux"

[nc4]: https://github.com/nextcloud/docker "Docker Image of Nextcloud"
