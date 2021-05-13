// mongodb://mongouser:passwd@<host>:27017/main?authSource=mydb
db.createUser(
  {
    user: "mongouser",
    pwd: "passwd",
    roles: [
      {
        role: "readWrite",
        db: "mydb"
      }
    ]
  }
)
