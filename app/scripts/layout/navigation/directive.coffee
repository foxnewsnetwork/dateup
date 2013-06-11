define 'layout/navigation/directive', [], ->
  class Directive
    restrict: "E"
    templateUrl: "views/layout/_navigation.html"
  return -> new Directive()