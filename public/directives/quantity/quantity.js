angular.module("main").directive("quantityDir", function() {
  return {
    restrict: "E",
    templateUrl: "directives/quantity/quantity.html",
    scope: {
      quantity: "=",
      addQuantity: "&",
      minusQuantity: "&"
    }
  }
})
