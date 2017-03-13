angular.module("main").service("productsSvc", function($http) {
  this.getAll = function() {
    return $http({
      method: "GET",
      url: "/api/user"
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
      url: "/auth/facebook"
    })
  }
})
