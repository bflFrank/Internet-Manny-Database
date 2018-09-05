var express = require("express");
var pug = require("pug");
var app = express();
var utils = require("./utils");

utils.generateDB();
app.set("view engine", "pug");
app.set("views", __dirname + "/views");

var routes = [
    ["/", "index"]
];

for(var i = 0; i < routes.length; i++)
    app.use(routes[i][0], require("./routes/" + routes[i][1]));

app.listen("8000", function(){
    console.log("Yarr");
});
