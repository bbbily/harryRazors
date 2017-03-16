angular.module("main", ["ui.router"])
  .config(function($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state("signIn", {
        url: "/signIn",
        templateUrl: "views/signIn/signIn.html",
        controller: "signInCtrl"
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
      .state("product", {
        url: "/products/:id",
        templateUrl: "views/products/singleProduct.html",
        controller: "singleProductCtrl"
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
      .state("history", {
        url: "/history",
        templateUrl: "views/profile/history.html"
      })
      .state("details", {
        url: "/details",
        templateUrl: "views/profile/details.html",
        controller: "detailsCtrl"
      });
      $urlRouterProvider.otherwise("/");
  })
