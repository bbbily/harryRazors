angular.module("main").controller("reviewCtrl", function($scope, productsSvc, user) {
  $scope.cart = productsSvc.getCart();
  // console.log($scope.cart);
  var data = {};
  // data.user_id = user.user_id;
  // data.products = [];
  var purchase_date = new Date().toLocaleString();
  for (var i=0; i<$scope.cart.length; i++) {
    // data.products.push([$scope.cart[i].id, $scope.cart[i].quantity]);
    productsSvc.updateCart({
      user_id: user.user_id,
      product_id: $scope.cart[i].id,
      quantity: $scope.cart[i].quantity,
      purchase_date: purchase_date
    });
  }
  productsSvc.emptyQuantity();
  productsSvc.emptyCart();
})
