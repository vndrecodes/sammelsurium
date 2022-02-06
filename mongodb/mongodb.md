---
id: mongodb
summary: Useful MongoDB stuff
categories: mongodb
tags: mongodb, db,
published: 2021-05-15
author: vndrecodes

---

# MongoDB

## User
Create first user using localhost exception:
```javascript
$ use admin

$ db.createUser({
  user: "<username>",
  pwd: "<password>",
  roles: [{ role: "root", db: "admin" }]
})
```

Add another user:
```javascript
$ use admin
$ db.createUser({
  user:"<username>",
  pwd:"<password>",
  roles:[{ role: "readWrite", db: "<database>"  }]
})
```

## Import / Export Data
```shell
$ mongoimport --authenticationDatabase admin
              -u <user>
              -p <password>
              --db <db>
              --collection <collection>
              --file <file.json>
              --jsonArray
```

## Useful
### Mongo shell
```shell
$ mongo -u "<user>" -p "<password>" <host> --authenticationDatabase "<db>"
```

### Handy commands
```sql
# List all databases
show dbs

# List all collections
show collections

# Change Databsase
use <database>

# List all documents of a collection
db.collection.find()
```

### Create Documents
https://stackoverflow.com/questions/9305987/nodejs-mongoose-which-approach-is-preferable-to-create-a-document
