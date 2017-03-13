var app = require("../server");

var db = app.get("db");

module.exports = {
  getAll: function(req, res) {
    db.read_products(function(err, result) {
      if (err) console.log(err)
      else res.send(result);
    })
  }
}
