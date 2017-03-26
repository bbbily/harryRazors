var express = require("express");
var bodyParser = require("body-parser");
var cors = require("cors");
var massive = require("massive");
var config = require("./config");
var session = require("express-session");
var app = module.exports = express();

var db = massive.connectSync({
  // connectionString: config.pgAdmin
  connectionString: config.elephantsql
});
app.set("db", db);



var passport = require("./service/passport");
var productsCtrl = require("./controllers/productsCtrl");
var usersCtrl = require("./controllers/usersCtrl")
var port = config.port;

// db.set_schema(function(err, data) {
//   if (err) console.log(err);
//   else console.log('All tables successfully reset');
// })

app.use(cors());
app.use(session({ secret: config.secret}));
app.use(passport.initialize());
app.use(passport.session());

app.use(express.static("./public"));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));







// const db = app.get("db");

app.get("/auth/facebook", passport.authenticate("facebook"));
app.get("/auth/facebook/callback", passport.authenticate("facebook", {
  successRedirect: "/#!/details",
  failureRedirect: "/#!/signIn"
}));
app.post("/auth/local", passport.authenticate("local", {
  successRedirect: "/me"
  // failureRedirect: "/me"
}));
app.post("/register", usersCtrl.register);
app.put("/update",  usersCtrl.updateProfile);
app.get("/products", productsCtrl.getAll);
app.get("/products/:id", productsCtrl.getOne);
app.get("/products/largePics/:id", productsCtrl.getLargePics);
app.get("/products/smallPics/:id", productsCtrl.getSmallPics);
app.get("/products/features/:id", productsCtrl.getFeatures);
app.get("/history/:id", productsCtrl.getHistory);
app.post("/cart", productsCtrl.updateCart);

app.get("/me", usersCtrl.me);
app.get("/logout", usersCtrl.logout);

app.post("/payment", usersCtrl.isAuthed, productsCtrl.charge);

app.listen(port, function() {
  console.log("listen to port: " + port);
})
