angular.module("main").controller("shippingCtrl", function($scope, productsSvc, $state) {
  $scope.subtotal = productsSvc.getSubtotal();
  $scope.tax = productsSvc.getTax();
  $scope.total = productsSvc.getTotal();

  $scope.toPayment = function(shipping) {
    productsSvc.setShipping(shipping);
    $state.go("payment")
  }
})
