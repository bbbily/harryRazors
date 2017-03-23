angular.module("main").controller("mainCtrl", function($scope, productsSvc, $rootScope) {
  $rootScope.$on('$stateChangeSuccess', function() {
   document.body.scrollTop = document.documentElement.scrollTop = 0;
});
  productsSvc.goMe().then(function(result) {
    if (result)
      productsSvc.setUserId(result.user_id)
  })
})
