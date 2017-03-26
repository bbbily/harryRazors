var passport = require("passport");
var config = require("../config");
var localStrategy = require("passport-local").Strategy;
var facebookStrategy = require("passport-facebook").Strategy;
var bcrypt = require("bcryptjs");

var app = require("../server");

var db = app.get("db");

function verifyPassword(reqBodyPassword, userPassword) {
  return bcrypt.compareSync(reqBodyPassword, userPassword);
}

passport.use(new facebookStrategy(config.authClient, function(token, refreshToken, fbuser, done) {
  db.check_facebook_id([fbuser.id], function(err, dbuser) {
    if (err) done(err);
    // console.log(dbuser)
    if (!dbuser[0])
      db.add_user([null, null, fbuser.id, fbuser.displayName], function(err, user) {
        if (err) done(err);
        // console.log("fackbookuser", user);
      })
    else
      fbuser = dbuser[0];
      return done(null, fbuser);
  })
}))

passport.use(new localStrategy({
  usernameField: "email",
  passwordField: "password"
}, function(email, password, done) {
  email = email.toLowerCase();
  // return done(null, {user: "nouser"});
  db.check_email([email], function(err, user) {
    if (err) done(err);
    if (!user[0]) return done(null, false);
    if (verifyPassword(password, user[0].password)) {
      delete user[0].password;
      return done(null,user[0]);
    }
    return done(null, false);
  })
}))

passport.serializeUser(function(user, done) {
  done(null, user);
})

passport.deserializeUser(function(user, done) {
  done(null, user);
})

module.exports = passport;
