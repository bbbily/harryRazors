angular.module("main").controller("singleProductCtrl", function($scope, $stateParams, productsSvc) {
  var id = $stateParams.id;
  $scope.getProductById = function(id) {
    productsSvc.getProductById(id).then(function(result) {
      $scope.data = result;
      console.log(result)
    })
  }
  $scope.getProductById(id);
})
