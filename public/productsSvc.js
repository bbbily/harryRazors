angular.module("main").service("productsSvc", function($http) {
  var hasUser = false;
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
      return result;
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
      console.log("d", result)
      return result.data;
    }).catch(function(err) {
      console.log(err)
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

  this.goFacebook = function() {
    return $http({
      method: "GET",
      url: "/me"
    }).then(function(result) {
      console.log("getbackfromfacbok", result);
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
})
