angular.module("main").controller("cartCtrl", function($scope, $state, productsSvc) {
  $scope.getCart = function() {
    $scope.subtotal = 0;
    $scope.cart = productsSvc.getCart();
    // $scope.subtotal = $scope.cart.reduce(function(a.total, b.total) {return a.total + b.total;}, 0);
    for (var i=0; i<$scope.cart.length; i++)
      $scope.subtotal += $scope.cart[i].total;
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
    $scope.subtotal = 0;
    for (var i=0; i<$scope.cart.length; i++)
      $scope.subtotal += $scope.cart[i].total;
  }
  $scope.minusQuantity = function(imgUrl, quantity) {
    if (quantity > 1) {
      productsSvc.minusQuantity(imgUrl);
      $scope.subtotal = 0;
      for (var i=0; i<$scope.cart.length; i++)
        $scope.subtotal += $scope.cart[i].total;
    }
  }
  $scope.removeQuantity = function(imgUrl) {
      productsSvc.removeQuantity(imgUrl);
      $scope.subtotal = 0;
      for (var i=0; i<$scope.cart.length; i++)
        $scope.subtotal += $scope.cart[i].total;
  }
})
