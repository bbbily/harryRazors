angular.module("main").directive("navDir", function() {
  return {
    restrict: "E",
    templateUrl: "directives/nav/nav.html",
    controller: function($scope, productsSvc) {
          $scope.$watch(productsSvc.getHasUser,
          function(newValue, oldValue) {
            console.log("d",newValue)
            $scope.hasUser = newValue;
          })
        }

  }
})
