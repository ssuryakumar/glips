express = require 'express';
routes = require './routes';
index = require './routes/index';
login = require './routes/login';
http = require 'http';
path = require 'path';

app = express();

# all environments
app.set "port", process.env.PORT or 8080
app.set "views", path.join(__dirname, "views")
app.set "view engine", "jade"
app.use express.favicon()
app.use express.logger("dev")
app.use express.json()
app.use express.urlencoded()
app.use express.methodOverride()
app.use express.cookieParser("your secret here")
app.use express.session()
app.use app.router
app.use "/bower_components", express.static(path.join(__dirname, "bower_components"))
app.use express.static(path.join(__dirname, "public"))
console.log(path.join(__dirname ,'bower_components'))
# development only

app.use express.errorHandler() if 'development' == app.get('env')

#routes 
app.get "/", index.start
app.post "/login", login.sendLogin

#Error Messages
app.get "/login", login.errorMessage  

http.createServer(app).listen app.get('port'), ->
  console.log 'Express server listening on port ' + app.get('port')


