var app = require("../server");
var config = require("../config");
var stripe = require("stripe")(config.stripeSecret);

var db = app.get("db");

module.exports = {
  getAll: function(req, res) {
    db.read_products(function(err, products) {
      // console.log(products)
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
  },

  charge: function(req, res) {
    // console.log(req.body);
    var charge = stripe.charges.create({
      amount: Number(req.body.amount) * 100,
      currency: "usd",
      source: req.body.payment.token,
      description: "test charge"
    }, function(err, charge) {
      res.status(200).send(charge);
    })
  },

  updateCart: function(req, res) {
    var product = req.body;
      db.update_cart([product.user_id, product.product_id, product.quantity, product.purchase_date], function(err, cart) {
        if (err) console.log(err);
        else res.status(200).send(cart);
      })
  },

  getHistory: function(req, res) {
    var id = req.params.id;
    db.read_cart([id], function(err, history) {
      // console.log("history",history)
      if (err) console.log(err);
      else res.status(200).send(history);
    })
  }
}
