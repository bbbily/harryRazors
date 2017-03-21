angular.module("main").controller("detailsCtrl", function($scope, productsSvc, user, $state) {
  // $scope.goMe = function() {
  //   productsSvc.goMe().then(function(result) {
      // console.log('hyu',result);
  $scope.userData = user;
  console.log(user);
  $scope.newUser = {};
  for (var prop in user)
    $scope.newUser[prop] = user[prop];
  productsSvc.setUserId($scope.userData.user_id);
    $scope.firstName = $scope.userData.user_name.split(" ")[0];
    $scope.lastName = $scope.userData.user_name.split(" ")[1];

  $scope.updateUser = function() {
    $scope.newUser.user_name = $scope.firstName + " " + $scope.lastName;
    for (var prop in $scope.newUser)
      $scope.userData[prop] = $scope.newUser[prop];
    productsSvc.updateUser($scope.newUser);

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
