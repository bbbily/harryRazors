angular.module("main").controller("productsCtrl", function($scope, productsSvc) {
  $scope.getAll = function(getSets) {
    productsSvc.getAll().then(function(result) {
      $scope.data = result;
      getSets($scope.sets, $scope.data);
    })



  }
  $scope.getAll(productsSvc.getSets);

})
