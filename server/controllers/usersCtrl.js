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
    if (!req.isAuthenticated()) return res.status(401).send("can not get user before login");
    else return next();
  },

  register: function(req, res, next) {
    var newUser = req.body;
    newUser.password = hashPassword(newUser.password);
    newUser.email = newUser.email.toLowerCase();
    db.check_email([newUser.email], function(err, user) {
      if (err) res.status(400).send(err);
      if (user[0]) {
        return res.status(401).send("This email is existing");
      } else {
        db.add_user([newUser.email, newUser.password], function(err, user) {
          if (err) res.status(400).send(err);
          delete user.password;
          res.status(200).send(user);
        })

      }
    })
  },

  me: function(req, res, next) {
    if (!req.user) return res.status(400).send();
    return res.status(200).send(req.user);
  },

  updateProfile: function(req, res, next) {
    var updateUser = req.body;
    updateUser.user_id = req.user.user_id;
    db.update_profile(updateUser, function(err, user) {
      if (err) return res.status(401).send(err);
      delete user.password;
      req.user = user;
      res.status(200).send(user);
    })
  },

  logout: function(req, res, next) {
    req.logout();
    return res.status(200).send("log out");
  }
}
