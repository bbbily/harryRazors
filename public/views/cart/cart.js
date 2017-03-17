angular.module("main").controller("cartCtrl", function($scope, productsSvc) {
  $scope.getCart = function() {
    $scope.cart = productsSvc.getCart();
  }
  $scope.getCart();
})
