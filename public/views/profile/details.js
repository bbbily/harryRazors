angular.module("main").controller("detailsCtrl", function($scope, productsSvc) {
  $scope.goMe = function() {
    productsSvc.goMe().then(function(result) {
      console.log('hyu',result);
    })
  }
  $scope.goMe();
  productsSvc.setHasUser(true);

  $scope.signOut = function() {
    productsSvc.setHasUser(false);
    productsSvc.logoutUser().then(function(result) {
      console.log("logou", result);
    })
  }
})
