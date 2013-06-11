define 'layout/footer/directive', [], ->
  class Directive
    restrict: "E"
    templateUrl: "views/layout/_footer.html"
  return -> new Directive()