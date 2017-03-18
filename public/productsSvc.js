angular.module("main").service("productsSvc", function($http) {
  var hasUser = false;
  var cart = [];
  var userId = null;
  this.setUserId = function(id) {
    userId = id;
  }
  this.getUserId = function() {
    return userId;
  }
  this.setHasUser = function(boolean) {
    hasUser = boolean;
  }
  this.getHasUser = function() {
    return hasUser;
  }
  this.getAll = function() {
    return $http({
      method: "GET",
      url: "/products"
    }).then(function(result) {
      return result.data;
    })
  }

  this.getUser = function(signInEmail, signInPassword) {
    return $http({
      method: "POST",
      url: "/auth/local",
      data: {
        email: signInEmail,
        password: signInPassword
      }
    }).then(function(result) {
      // console.log("d", result)
      return result.data;
    }).catch(function(err) {
      console.log("err", err)
    })
  }

  this.addUser = function(registerEmail, registerPassword) {
    return $http({
      method: "POST",
      url: "/register",
      data: {
        email: registerEmail,
        password: registerPassword
      }
    })
  }

  this.goMe = function() {
    return $http({
      method: "GET",
      url: "/me"
    }).then(function(result) {
      // console.log("getbackfromfacbok", result);
      return result.data;
    })
    // .catch(function(err) {
    //   console.log(err);
    //   return err;
    // })
  }

  this.logoutUser = function() {
    return $http({
      method: "GET",
      url: "/logout"
    }).then(function(result) {
      console.log("servicelogout", result)
    })
  }




  //////////////////////product function/////////////////////////////

  this.getType = function(data, text) {
    var result = data.filter(function(product) {
      return product.type == text;
    });
    return result;
  }

  this.getProductById = function(id) {
    return $http({
      method: "GET",
      url: "/products/" + id
    }).then(function(result) {
      return result.data;
    })
  }

  this.getLargePics = function(id) {
    return $http({
      method: "GET",
      url: "/products/largePics/" + id
    }).then(function(result) {
      return result.data;
    })
  }

  this.getSmallPics = function(id) {
    return $http({
      method: "GET",
      url: "/products/smallPics/" + id
    }).then(function(result) {
      return result.data;
    })
  }

  this.getFeatures = function(id) {
    return $http({
      method: "GET",
      url: "/products/features/" + id
    }).then(function(result) {
      return result.data;
    })
  }


  ////////////////////////////cart function .////////////////////////

  this.addToCart = function(data, quantity, imgUrl, packSize) {
    var product = {};
    product.id = data.id;
    product.quantity = quantity;
    product.name = data.name;
    product.price = data.price;
    product.showcolor = data.showcolor;
    product.img_url = imgUrl;
    product.pack_size = packSize;
    product.total = data.price * quantity;
    cart.push(product);
  }

  this.getCart = function() {
    return cart;
  }

  this.addQuantity = function(imgUrl) {
    for (var i=0; i<cart.length; i++) {
      if (cart[i].img_url == imgUrl) {
        cart[i].quantity++;
        cart[i].total = cart[i].price * cart[i].quantity;
        break;
      }
    }
  }
  this.minusQuantity = function(imgUrl) {
    for (var i=0; i<cart.length; i++) {
      if (cart[i].img_url == imgUrl) {
        cart[i].quantity--;
        cart[i].total = cart[i].price * cart[i].quantity;
        break;
      }
    }
  }
  this.removeQuantity = function(imgUrl) {
    for (var i=0; i<cart.length; i++) {
      if (cart[i].img_url == imgUrl) {
        cart.splice(i, 1);
        break;
      }
    }
  }
})
