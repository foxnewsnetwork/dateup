define 'geoboard/tag/directive', [], ->
  class Directive
    restrict: "E"
    templateUrl: "views/geoboard/_tag.html"
  return -> new Directive()