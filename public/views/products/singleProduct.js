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

  $scope.addToCart = function(quantity, packSize) {
    for (var i=0; i<$scope.largePics.length; i++) {
      if ($scope.largePics[i].index == 0 && $scope.largePics[i].showcolor == $scope.product.showcolor && $scope.largePics[i].gelorcream == $scope.product.gelorcream && $scope.largePics[i].pack_size == $scope.product.pack_size) {
        var imgUrl = $scope.largePics[i].img_url;
        break;
      }
    }
    productsSvc.addToCart($scope.data, quantity, imgUrl, packSize);
  }
  $scope.getProductById(id);
  $scope.getLargePics(id);
  $scope.getSmallPics(id);

  $scope.product = {};
  $scope.product.index = 0;
  $scope.product.showcolor = "default";
  $scope.product.gelorcream = "gel";
  $scope.product.pack_size = 8;

})
