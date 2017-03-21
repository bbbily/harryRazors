angular.module("main").controller("paymentCtrl", function($scope, productsSvc, $state) {
  $scope.subtotal = productsSvc.getSubtotal();
  $scope.tax = productsSvc.getTax();
  $scope.total = productsSvc.getTotal();

  $scope.charge = function(payment, total) {
    console.log("payment", payment.card, total)
    productsSvc.charge(payment, total)
  }
})
