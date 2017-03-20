angular.module("main").controller("cartCtrl", function($scope, $state, productsSvc) {
  $scope.setSubtotal = function() {
    $scope.subtotal = 0;
    for (var i=0; i<$scope.cart.length; i++)
      $scope.subtotal += Number($scope.cart[i].total);
    productsSvc.setSubtotal($scope.subtotal);
  }
  $scope.getCart = function() {
    $scope.cart = productsSvc.getCart();
    $scope.setSubtotal();
  }
  $scope.getCart();

  $scope.checkSignIn = function() {
    if (productsSvc.getUserId())
      $state.go("shipping");
    else
      $state.go("signIn");
  }

  $scope.addQuantity = function(imgUrl) {
    productsSvc.addQuantity(imgUrl);
    $scope.setSubtotal();
  }
  $scope.minusQuantity = function(imgUrl, quantity) {
    if (quantity > 1) {
      productsSvc.minusQuantity(imgUrl);
      $scope.setSubtotal();
    }
  }
  $scope.removeQuantity = function(imgUrl, quantity) {
      productsSvc.removeQuantity(imgUrl, quantity);
      $scope.setSubtotal();
  }
})
