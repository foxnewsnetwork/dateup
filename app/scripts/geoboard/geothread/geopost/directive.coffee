define 'geoboard/geothread/geopost/directive', [], ->
  class Directive
    restrict: "E"
    templateUrl: "views/geoboard/geothread/_geopost.html"
  return -> new Directive()