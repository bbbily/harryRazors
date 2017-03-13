angular.module("main", ["ui.router"])
  .config(function($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state("signIn", {
        url: "/signIn",
        templateUrl: "views/signIn/signIn.html"
      })
      .state("home", {
        url: "/",
        templateUrl: "views/home/home.html"
      })
      .state("products", {
        url: "/products",
        templateUrl: "views/products/products.html",
        controller: "productsCtrl"
      })
      .state("shavePlans", {
        url: "/shavePlans",
        templateUrl: "views/shavePlans/shavePlans.html"
      })
      .state("ourStory", {
        url: "/ourStory",
        templateUrl: "views/ourStory/ourStory.html"
      })
      .state("help", {
        url: "/help",
        templateUrl: "views/help/help.html"
      })
      .state("profile", {
        url: "/profile",
        templateUrl: "views/profile/profile.html"
      });
      $urlRouterProvider.otherwise("/");
  })
