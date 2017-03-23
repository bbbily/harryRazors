angular.module("main").controller("shippingCtrl", function($scope, productsSvc, $state, user) {
  $scope.subtotal = productsSvc.getSubtotal();
  $scope.tax = productsSvc.getTax();
  $scope.total = productsSvc.getTotal();
  productsSvc.setUserId(user.user_id);

  $scope.toPayment = function(shipping) {
    productsSvc.setShipping(shipping);
    $state.go("payment")
  }
})
