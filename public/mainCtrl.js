angular.module("main").controller("mainCtrl", function($scope, productsSvc) {
  productsSvc.goMe().then(function(result) {
    if (result)
      productsSvc.setUserId(result.user_id)
  })
})
