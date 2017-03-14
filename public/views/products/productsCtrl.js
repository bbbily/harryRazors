angular.module("main").controller("productsCtrl", function($scope, productsSvc) {
  $scope.getAll = function() {
    productsSvc.getAll().then(function(result) {
      $scope.data = result;
    })
  }
  $scope.getAll();
  
})
