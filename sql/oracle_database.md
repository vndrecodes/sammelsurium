# Oracle Database



## Create schema
### SYS, SYSTEM, SYSDBA:
* "sys" ist ein Benutzer ("user") mit der Rolle "DBA" (mit Administratorrechten), der bei der Installation eingerichtet wird und die meisten Rechte hat ("Owner of the Database and Owner of the Data Dictionary"). "sys" kann sich mit "sysdba"-Privilegien mit der Datenbank verbinden ("connect sys/<password> as sysdba").
* "system" ist ein Benutzer ("user") mit der Rolle "DBA" (mit Administratorrechten), der bei der Installation eingerichtet wird und die zweitmeisten Rechte hat. Administrative Aufgaben sollten bevorzugt als "system"-Benutzer ausgeführt werden.
* "sysdba" ist weder ein Benutzer noch eine Rolle, sondern ist ein "Privileg" (also eine besondere Berechtigung). Wenn sich der "sys"-Benutzer "as sysdba" anmeldet, verfügt er über weitreichendste Rechte (z.B. Erzeugung der Datenbank, Herunterfahren, Backup und Recovery).

[Oracle Database XE][ora1]

Create a new Database Schema with `sysdba` privilege.
```sql
/*
 * 99.9% of the time the error ORA-65096: invalid common user or role name
 * means you are logged into the CDB when you should be logged into a PDB.
 *
 * Connect with sysdba privilege to a PDB (or alter session in CBD)
 */
show con_name; -- root container(CDB)
show pdbs; -- pluggable databases(PDB)
show user;

ALTER SESSION SET "_oracle_script"=true;
CREATE USER <user> IDENTIFIED BY <password>
  DEFAULT TABLESPACE users
  TEMPORARY TABLESPACE temp
  QUOTA UNLIMITED ON users;
GRANT CREATE SESSION TO <user>;
GRANT CREATE TABLE TO <user>;
GRANT CREATE VIEW TO <user>;
GRANT CREATE ANY TRIGGER TO <user>;
GRANT CREATE ANY PROCEDURE TO <user>;
GRANT CREATE SEQUENCE TO <user>;
GRANT CREATE SYNONYM TO <user>;

SELECT username, account_status FROM dba_users;



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

## References
[Oracle Database XE][ora1]

[ora1]: https://www.torsten-horn.de/techdocs/oraclexe-db.htm "Oracle Database XE"
