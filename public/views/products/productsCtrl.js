angular.module("main").controller("productsCtrl", function($scope, productsSvc) {
  $scope.getAll = function() {
    productsSvc.getAll().then(function(result) {
      $scope.data = result;
      $scope.sets = productsSvc.getType($scope.data, "starter sets");
      $scope.bladesAndPacks = productsSvc.getType($scope.data, "Blades & Refill Packs");
      $scope.supplies = productsSvc.getType($scope.data, "Grooming Supplies");
      $scope.color = "brown";
    })

  }
  $scope.getAll();


  $scope.changeColor = function(color) {
    $scope.color = color;
  }
})
