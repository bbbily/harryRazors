angular.module("main").directive("navDir", function() {
  return {
    restrict: "E",
    templateUrl: "directives/nav/nav.html",
    controller: function($scope, productsSvc) {
          $scope.$watch(productsSvc.getUserId,
          function(newValue, oldValue) {
            // console.log("d",newValue)
            $scope.hasUser = newValue;
          });

          $scope.$watch(productsSvc.getTotalQuantity,
          function(newValue, oldValue) {
            $scope.totalQuantity = newValue;
          })
        }

  }
})
