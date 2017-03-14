var express = require("express");
var bodyParser = require("body-parser");
var cors = require("cors");
var massive = require("massive");
var config = require("./config");
var session = require("express-session");
var app = module.exports = express();
var conn = massive.connectSync({
  connectionString: "postgres://postgres:@localhost/harry"
});
app.set("db", conn);
var passport = require("./service/passport");
var productsCtrl = require("./controllers/productsCtrl");
var usersCtrl = require("./controllers/usersCtrl")
var port = config.port;



app.use(cors());
app.use(session({ secret: config.secret}));
app.use(passport.initialize());
app.use(passport.session());


app.use(express.static("../public"));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
// const db = app.get("db");

app.get("/auth/facebook", passport.authenticate("facebook"));
app.get("/auth/facebook/callback", passport.authenticate("facebook", {
  successRedirect: "/#!/details",
  failureRedirect: "/#!/signIn"
}));
app.post("/auth/local", passport.authenticate("local", {
  successRedirect: "/me",
  // failureRedirect: "/me"
}));
app.post("/register", usersCtrl.register);
app.post("/update", usersCtrl.updateProfile);
app.get("/products", productsCtrl.getAll);
// app.get("/api/user", function(req, res) {
//   res.send({})
// })

app.get("/me", usersCtrl.isAuthed, usersCtrl.me);
app.get("/logout", usersCtrl.logout);
// passport.serializeUser(function(profile, done) {
//   done(null, profile);
// })
// passport.deserializeUser(function(dataFromSession, done) {
//   done(null, dataFromSession);
// })

app.listen(port, function() {
  console.log("listen to port: " + port);
})
