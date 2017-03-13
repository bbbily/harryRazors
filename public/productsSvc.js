angular.module("main").service("productsSvc", function($http) {
  this.getAll = function() {
    return $http({
      method: "GET",
      url: "/api/user"
    }).then(function(result) {
      return result;
    })
  }
})
