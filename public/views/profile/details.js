angular.module("main").controller("detailsCtrl", function($scope, productsSvc, user, $state) {
  // $scope.goMe = function() {
  //   productsSvc.goMe().then(function(result) {
      // console.log('hyu',result);
  // $scope.userData = user;
  // console.log(user);
  $scope.newUser = {};
  for (var prop in user)
    $scope.newUser[prop] = user[prop];
  if (user.id)
    productsSvc.setUserId(user.id);
  else if (user.user_id)
    productsSvc.setUserId(user.user_id);
  if (user.user_name) {
    $scope.firstName = user.user_name.split(" ")[0];
    $scope.lastName = user.user_name.split(" ")[1];
  }

  $scope.updateUser = function() {
    if ($scope.firstName)
      $scope.newUser.user_name = $scope.firstName + " " + $scope.lastName;
    // for (var prop in $scope.newUser)
    //   user[prop] = $scope.newUser[prop];
    console.log($scope.newUser)
    productsSvc.updateUser($scope.newUser).then(function(result) {
      // user = result;
    });

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
      // console.log("logou", result);
    })
  }
})
