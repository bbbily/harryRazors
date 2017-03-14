angular.module("main").controller("signInCtrl", function($scope, productsSvc) {
  $scope.login = function() {
    productsSvc.getUser($scope.signInEmail, $scope.signInPassword).then(function(result) {
      console.log(result);
      $scope.user = result;
      $scope.hasUser = true;
    })
  }

  $scope.register = function() {
    productsSvc.addUser($scope.registerEmail, $scope.registerPassword).then(function(result) {
      console.log(result);
    })
  }

  // $scope.hasUser = productsSvc.getHasUser();
  // $scope.goFacebook = function() {
  //   console.log("click")
  //   productsSvc.goFacebook().then(function(result) {
  //     console.log(result);
  //   })
  // }
})
