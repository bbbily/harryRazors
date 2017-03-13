angular.module("main").controller("signInCtrl", function($scope, productsSvc) {
  $scope.login = function() {
    productsSvc.getUser($scope.signInEmail, $scope.signInPassword).then(function(result) {
      console.log(result);
      $scope.user = result;
    })
  }

  $scope.register = function() {
    productsSvc.addUser($scope.registerEmail, $scope.registerPassword).then(function(result) {
      console.log(result);
    })
  }

  $scope.goFacebook = function() {
    productsSvc.goFacebook().then(function(result) {
      console.log(result);
    })
  }
})
