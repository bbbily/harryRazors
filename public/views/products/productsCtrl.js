angular.module("main").controller("productsCtrl", function($scope, productsSvc) {
  $scope.getAll = function() {
    productsSvc.getAll().then(function(result) {
      // console.log(result)
      $scope.data = result;
      $scope.sets = productsSvc.getType($scope.data, "Starter Sets");
      $scope.bladesAndPacks = productsSvc.getType($scope.data, "Blades & Refill Packs");
      $scope.supplies = productsSvc.getType($scope.data, "Grooming Supplies");
    })

  }
  $scope.getAll();


  $scope.changeColor = function(color) {
    $scope.color = color;
  }
})
