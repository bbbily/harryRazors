angular.module("main").controller("singleProductCtrl", function($scope, $stateParams, productsSvc) {
  var id = $stateParams.id;
  $scope.getProductById = function(id) {
    productsSvc.getProductById(id).then(function(result) {
      $scope.data = result;
      console.log(result)
    })
  }

  $scope.getLargePics = function(id) {
    productsSvc.getLargePics(id).then(function(result) {
      $scope.largePics = result;
      console.log(result);
    })
  }

  $scope.getSmallPics = function(id) {
    productsSvc.getSmallPics(id).then(function(result) {
      $scope.smallPics = result;
    })
  }
  $scope.getProductById(id);
  $scope.getLargePics(id);
  $scope.getSmallPics(id);

  $scope.product = {};
  $scope.product.index = 0;
  $scope.product.showcolor = "default";
  $scope.product.gelorcream = "gel";

})
