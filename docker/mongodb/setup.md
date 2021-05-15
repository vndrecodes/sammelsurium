```shell
$ docker run -d \
    --name <containername> \
    --restart=always \
    -p 27017:27017   \
    -e MONGO_INITDB_ROOT_USERNAME=<user> \
    -e MONGO_INITDB_ROOT_PASSWORD=<password> \
    mongo            \
    mongod --auth

# Add root user using localhost exception

# Bash into container
$ sudo docker exec -i -t <containername> bash

# Mongo shell
$ mongo

# Create first user
$ use admin
$ db.createUser({user:"<user>",pwd:"<password>",roles:[{role:"root",db:"admin"}]})

$ exit
$ exit

# Connect to db using mongo shell
$ mongo -u "<user>" -p "<password>" <host> --authenticationDatabase "<admin>"
```
