# Express Session Keeping

```javascript
var express = require('express');
var app = express();

app.use(express.logger());
app.use(express.cookieParser());
app.use(express.bodyParser());      
app.use(express.session({secret:'$tackoverflow-rules'}));

app.get('/', function(req, res){
  if(req.session.address === undefined){
    res.send(200,'<html><body><form action="address" method="post">'
      +'<input type="text" name="address" placeholder="Enter address">'
      +'</form></body></html>');
  } else {
    res.send(200,'<html><body><span>I know that you live at '+req.session.address+'!</span></body></html>');
  };
});

app.post('/address', function(req, res){
  if(req.body.address !== undefined && req.body.address !== ""){
    req.session.address = req.body.address;
    res.redirect('/');
  } else {
    req.session.address = undefined;
    res.redirect('/');
  };
});

require('http').createServer(app).listen(3000);
```
[how-to-remember-data-of-the-client](https://stackoverflow.com/questions/19933420/how-to-remember-data-of-the-client)
