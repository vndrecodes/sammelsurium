# Oracle Database

## Export database
Create a new Database Schema as `sysdba` user.
```sql
show con_name;
show user;

ALTER SESSION SET "_oracle_script"=true;
CREATE USER <user> IDENTIFIED BY <password>;
GRANT CREATE TABLE TO <user>;
GRANT CREATE SESSION TO <user>;
SELECT username, account_status FROM dba_users;
```


## Tablespaces
```sql
-- List default tablespaces for users
select username,default_tablespace from dba_users;
```


## Stats
```sql
-- Show sessions
SELECT * FROM V$SESSION
where type = 'USER';
```
