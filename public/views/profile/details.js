angular.module("main").controller("detailsCtrl", function($scope, productsSvc) {
  $scope.goMe = function() {
    productsSvc.goMe().then(function(result) {
      console.log('hyu',result);
      $scope.userData = result;
      productsSvc.setUserId($scope.userData.user_id);
    })
  }
  $scope.goMe();
  productsSvc.setHasUser(true);

  $scope.signOut = function() {
    productsSvc.setUserId(null);
    productsSvc.setHasUser(false);
    productsSvc.logoutUser().then(function(result) {
      console.log("logou", result);
    })
  }
})
