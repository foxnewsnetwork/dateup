define 'geoboard/geothread/directive', [], ->
  class Directive
    restrict: "E"
    templateUrl: "views/geoboard/_geothread.html"
  return -> new Directive()