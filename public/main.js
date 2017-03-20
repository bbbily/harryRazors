angular.module("main", ["ui.router", "angular-stripe"])
  .config(function($stateProvider, $urlRouterProvider, stripeProvider) {

    var getUser = function(productsSvc) {
      return productsSvc.goMe().then(function(result) {
        console.log('hyu',result);
        return result;
      })
    };

    var limitUser = function(productsSvc, $state) {
      return productsSvc.goMe().then(function(result) {
        if (!result)
          $state.go("home")
        return result;
      }).catch(function(err) {
        $state.go("home")
      })
    };

    var limitLogin = function(productsSvc, $state) {
      return productsSvc.goMe().then(function(result) {
        if (result)
          $state.go("home")
        // return result;
      })
    }


    $stateProvider
      .state("signIn", {
        url: "/signIn",
        templateUrl: "views/signIn/signIn.html",
        controller: "signInCtrl",
        resolve: {
          user: limitLogin
        }
      })
      .state("home", {
        url: "/",
        templateUrl: "views/home/home.html"
      })
      .state("cart", {
        url: "/cart",
        templateUrl: "views/cart/cart.html",
        controller: "cartCtrl"
      })
      .state("shipping", {
        url: "/shipping",
        templateUrl: "views/shipping/shipping.html",
        controller: "shippingCtrl"
      })
      .state("payment", {
        url: "/payment",
        templateUrl: "views/payment/payment.html",
        controller: "paymentCtrl"
      })
      .state("review", {
        url: "/review",
        templateUrl: "views/review/review.html"
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
        controller: "detailsCtrl",
        resolve: {
          user: limitUser
        }
      });
      $urlRouterProvider.otherwise("/");
  })
