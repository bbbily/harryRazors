angular.module("main").controller("paymentCtrl", function($scope, productsSvc, $state) {
  $scope.subtotal = productsSvc.getSubtotal();
  $scope.tax = productsSvc.getTax();
  $scope.total = productsSvc.getTotal();

  $scope.toReview = function() {
    $state.go("review")
  }
})
