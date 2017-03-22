angular.module("main").controller("reviewCtrl", function($scope, productsSvc) {
  $scope.cart = productsSvc.getCart();
  
  productsSvc.emptyCart();
})
