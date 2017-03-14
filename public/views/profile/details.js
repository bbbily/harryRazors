angular.module("main").controller("detailsCtrl", function($scope, productsSvc) {
  $scope.goFacebook = function() {
    productsSvc.goFacebook().then(function(result) {
      console.log('hyu',result);
    })
  }
  $scope.goFacebook();
  productsSvc.setHasUser(true);

  $scope.signOut = function() {
    productsSvc.setHasUser(false);
    productsSvc.logoutUser().then(function(result) {
      console.log("logou", result);
    })
  }
})
