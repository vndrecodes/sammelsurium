---
id: mysql
summary: mysql cheatsheet
categories: sql
tags: database, sql, mariadb, mysql
published: 2021-05-08
author: vndrecodes

---

# Useful mysql stuff

## Users

### List all users:
```sql
SELECT User,Host FROM mysql.user;
SELECT User, Host, database FROM mysql.db
```

### Show grants for user:
``` sql
SHOW GRANTS FOR '<user>'@'localhost';
```

### Revoke all grants for user
```sql
REVOKE ALL PRIVILEGES, GRANT OPTION FROM '<user>'@'localhost';
```

### Delete user from the user table
```sql
DROP USER '<user>'@'localhost';
```

### Change user host
```sql
UPDATE mysql.user SET host = '<new_host>' WHERE host = '<old_host>';
UPDATE mysql.db SET host = '<new_host>' WHERE host = '<old_host>';
FLUSH PRIVILEGES;
```


## Administration
### General mysql status
``` shell
$ mysqladmin -u root -p status
```

### Show open database connections

Show number of open database connections:
```sql
mysql> show status like 'Conn%';
mysql> show status like '%onn%';
```

### Show process list of database
``` sql
mysql> show processlist;
```
[How to show open database connections][AVLI1]

### Enable autocomplete in mysql commandline client
``` mysql
mysql> \#
```


## Import / Export

### Export database
```sql
mysqldump -h hostname -u username -p database_name -P port > file.sql -- Export database
```

### Seed database
```sql
mysql -u username -p database_name < file. -- Import database
```
