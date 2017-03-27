var app = require("../server");
var db = app.get("db");

var bcrypt = require("bcryptjs");

function hashPassword(password) {
  var salt = bcrypt.genSaltSync(10);
  var hash = bcrypt.hashSync(password, salt);
  return hash;
}

module.exports = {
  isAuthed: function(req, res, next) {
    if (!req.isAuthenticated()) return res.send("can not get user before login");
    else return next();
  },

  register: function(req, res, next) {
    var newUser = req.body;
    newUser.password = hashPassword(newUser.password);
    newUser.email = newUser.email.toLowerCase();
    db.check_email([newUser.email], function(err, user) {
      if (err) res.status(200).send(err);
      if (user[0]) {
        return res.status(200).send("This email is existing");
      } else {
        db.add_user([newUser.email, newUser.password, null, null], function(err, user) {
          if (err) res.status(200).send(err);
          delete user.password;
          res.status(200).send("sign up successfully!");
        })

      }
    })
  },

  me: function(req, res, next) {
    if (!req.user) return res.status(200).send(false);
    console.log("req.user",req.user)
    return res.status(200).send(req.user);
  },

  updateProfile: function(req, res, next) {
    var updateUser = req.body;
    // req.user = req.body;
    updateUser.user_id = req.user.user_id;
    db.users.save(updateUser, function(err, user) {
      if (err) return res.status(200).send(err);
      delete user.password;
      req.session.passport.user = user;
      console.log("update",user, req.user)
      res.status(200).send(user);
    })
  },

  logout: function(req, res, next) {
    req.logout();
    return res.status(200).send("log out");
  }
}
