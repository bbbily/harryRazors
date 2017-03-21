angular.module("main").controller("detailsCtrl", function($scope, productsSvc, user, $state) {
  // $scope.goMe = function() {
  //   productsSvc.goMe().then(function(result) {
      // console.log('hyu',result);
  $scope.userData = user;
  console.log(user);
  productsSvc.setUserId($scope.userData.user_id);
  // if ($scope.userData.user_name) {
    $scope.firstName = $scope.userData.user_name.split(" ")[0];
    $scope.lastName = $scope.userData.user_name.split(" ")[1];

  // }

  $scope.updateUser = function() {
    $scope.userData.user_name = $scope.firstName + " " + $scope.lastName;
    productsSvc.updateUser($scope.userData);

  }
    // })
  // }
  // $scope.goMe();
  // console.log(productsSvc.getReady());
  // if (productsSvc.getReady())
  //   $state.go("shipping")

  $scope.signOut = function() {
    productsSvc.setUserId(null);
    productsSvc.logoutUser().then(function(result) {
      console.log("logou", result);
    })
  }
})
