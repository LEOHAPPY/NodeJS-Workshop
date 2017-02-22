var express = require('express');
var app = express();
var http = require('http');
var path = require('path');

var bodyParser = require('body-parser');

//var routes = require('./routes');
var photos = require('./routes/photos'); 

var mysql = require('mysql');
var connection  = require('express-myconnection'); 

var dbOptions = {
      host: 'localhost',
      user: 'root',
      password: 'password',
      port: 3306,
      database: 'test'
    };

//var connection = mysql.createConnection(dbOptions);

// all environments
app.set('port', process.env.PORT || 1337);
app.set('views', path.join(__dirname, 'views'));

// set view engine to ejs
app.set('view engine', 'ejs');

// parse application/x-www-form-urlencoded 
app.use(bodyParser.urlencoded({ extended: false }));
 
// parse application/json 
app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, 'public')));

/*------------------------------------------
    connection peer, register as middleware
    type : single, pool and request 
-------------------------------------------*/
app.use(connection(mysql, {
        
        host: 'localhost',
        user: 'root',
        password : 'password',
        port : 3306, //port mysql
        database:'test'

    }, 'pool'));

//Creating Router() object
var router = express.Router();

// Router middleware, mentioned it before defining routes.
router.use("/", function(req,res,next) {
  console.log("/" + req.method);
  next();
});
// Provide all routes here
router.get("/", function(req, res){
  // send back json data
  res.json({"Reminder" : "Please go to /photos"});
});

router.get('/photos', photos.list);
router.get('/addPage', photos.add);
router.post('/addPage', photos.save);
router.get('/deletePage/:id', photos.delete_photo);
router.get('/editPage/:id', photos.edit);
router.post('/editPage/:id',photos.save_edit);
router.get('/detailsPage/:id',photos.details);
// Tell express to use this router with '/' before.
// You can put just '/' if you don't want any sub path before routes.
app.use("/", router);

app.use(function(err,req,res,next) {
  console.log(err.stack);
  res.status(500).send({"Error" : err.stack});
});


// last middleware - handle 404 error
app.use("*", function(req, res){
  res.status(404).send('404');
});

// listen on this port
// viewed at http://localhost:1337
/*
app.listen(1337, function() {
	console.log("Running at Port 1337");
});
*/

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
