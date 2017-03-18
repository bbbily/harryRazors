var app = require("../server");

var db = app.get("db");

module.exports = {
  getAll: function(req, res) {
    db.read_products(function(err, products) {
      if (err) console.log(err)
      else res.send(products);
    })
  },

  getOne: function(req, res) {
    var id = req.params.id;
    db.read_product([id], function(err, product) {
      if (err) console.log(err)
      else res.status(200).send(product[0]);
    })
  },

  getLargePics: function(req, res) {
    var id = req.params.id;
    db.read_single_product_large([id], function(err, product) {
      if (err) console.log(err)
      else res.status(200).send(product);
    })
  },

  getSmallPics: function(req, res) {
    var id = req.params.id;
    db.read_single_product_small([id], function(err, product) {
      if (err) console.log(err)
      else res.status(200).send(product);
    })
  },

  getFeatures: function(req, res) {
    var id = req.params.id;
    db.read_features([id], function(err, features) {
      if (err) console.log(err)
      else res.status(200).send(features);
    })
  }
}
