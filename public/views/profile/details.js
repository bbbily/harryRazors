angular.module("main").controller("detailsCtrl", function($scope, productsSvc, user) {
  // $scope.goMe = function() {
  //   productsSvc.goMe().then(function(result) {
      // console.log('hyu',result);
      $scope.userData = user;
      productsSvc.setUserId($scope.userData.user_id);
    // })
  // }
  // $scope.goMe();

  $scope.signOut = function() {
    productsSvc.setUserId(null);
    productsSvc.logoutUser().then(function(result) {
      console.log("logou", result);
    })
  }
})
