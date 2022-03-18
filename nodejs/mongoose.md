```javascript
const mongoose = require('mongoose');

mongoose.connect('mongodb://localhost:27017/mydb',{useNewUrlParser:true})  
.then(()=>console.log('connected to database')).catch(error=>console.log('error connecting to database',error))  
```

```javascript
var mongoose = require('mongoose');

var mongoDB = 'mongodb://127.0.0.1/my_database';
mongoose.connect(mongoDB, {useNewUrlParser: true, useUnifiedTopology: true});

var db = mongoose.connection;

db.on('error', console.error.bind(console, 'MongoDB connection error:'));
```
