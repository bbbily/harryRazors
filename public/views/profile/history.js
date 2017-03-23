angular.module("main").controller("historyCtrl", function($scope, productsSvc, user) {
  productsSvc.getHistory(user.user_id).then(function(result) {
    $scope.product = result;
  })
})
