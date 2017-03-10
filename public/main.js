angular.module("main", ["ui.router"])
  .config(function($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state("signIn", {
        url: "/signIn",
        templateUrl: "templates/signIn.html"
      })
      .state("home", {
        url: "/",
        templateUrl: "templates/home.html"
      })
  })
