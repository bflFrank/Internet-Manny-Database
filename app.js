var express = require("express");
var path = require('path');
var pug = require("pug");
var app = express();
var utils = require("./utils");

utils.generateDB();
app.set("view engine", "pug");
app.set("views", __dirname + "/views");

app.use(express.static(path.join(__dirname, 'public')));

var routes = [
    ["/", "index"],
    ["/admin/home", "adminRoutes/adminHome"],
    ["/users/home", "userRoutes/userHome"],
    ["/users/movie/list","userRoutes/movieList"]
];

for(var i = 0; i < routes.length; i++)
    app.use(routes[i][0], require("./routes/" + routes[i][1]));

app.listen("8000", function(){
    console.log("Yarr");
});
