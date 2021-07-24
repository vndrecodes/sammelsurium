# Oracle Database



## Create schema
Create a new Database Schema as `sysdba` user.
```sql
show con_name;
show user;

ALTER SESSION SET "_oracle_script"=true;
CREATE USER <user> IDENTIFIED BY <password>
  DEFAULT TABLESPACE users
  TEMPORARY TABLESPACE temp
  QUOTA UNLIMITED ON users;
GRANT CREATE TABLE TO <user>;
GRANT CREATE SESSION TO <user>;
SELECT username, account_status FROM dba_users;


GRANT create session TO <user>;
GRANT create table TO <user>;
GRANT create view TO <user>;
GRANT create any trigger TO <user>;
GRANT create any procedure TO <user>;
GRANT create sequence TO <user>;
GRANT create synonym TO <user>;

ALTER USER <user> quota unlimited on <tablespace name>;
```

With individual role:
```sql
CREATE ROLE mycustomrole;
GRANT  CREATE session, CREATE table, CREATE view, CREATE procedure, CREATE synonym TO mycustomrole;
CREATE USER myuser IDENTIFIED BY mypassword
       DEFAULT TABLESPACE users
       TEMPORARY TABLESPACE temp
       QUOTA UNLIMITED ON users;
GRANT  mycustomrole TO myuser;
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

## Session
```sql
SELECT sid, serial#, status, username FROM v$session;
You could also use IMMEDIATE clause:

ALTER SYSTEM KILL SESSION 'sid,serial#' IMMEDIATE;
-- https://stackoverflow.com/questions/31201693/how-to-kill-all-active-and-inactive-oracle-sessions-for-user/31202140
```
