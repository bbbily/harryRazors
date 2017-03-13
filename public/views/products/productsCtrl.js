angular.module("main").controller("productsCtrl", function($scope, productsSvc) {
  $scope.getAll = function() {
    productsSvc.getAll().then(function(result) {
      console.log(result)
      $scope.data = result;
    })
  }
  $scope.getAll();
})
