angular.module("main").controller("signInCtrl", function($scope, productsSvc, $state) {
  $scope.login = function() {
    productsSvc.getUser($scope.signInEmail, $scope.signInPassword).then(function(result) {
      console.log("user", result);
      $scope.user = result;
      if ($scope.user) {
        console.log("go");
        $state.go("details");
      } else {
        $scope.signInEmail = "";
        $scope.signInPassword = "";

      }
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
