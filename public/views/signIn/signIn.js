angular.module("main").controller("signInCtrl", function($scope, productsSvc) {
  $scope.login = function() {
    productsSvc.getUser($scope.signInEmail, $scope.signInPassword).then(function(result) {
      console.log(result);
      $scope.user = result;
    })
  }
})
