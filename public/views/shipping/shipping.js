angular.module("main").controller("shippingCtrl", function($scope, productsSvc) {
  $scope.subtotal = productsSvc.getSubtotal();
  $scope.tax = productsSvc.getTax();
  $scope.total = productsSvc.getTotal();
})
