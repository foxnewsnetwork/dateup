define 'geoboard/geothread/geopost/directive', [], ->
  class Directive
    constructor: (app) ->
      @geopost = ->
        restrict: "E" ,
        templateUrl: "views/geoboard/geothread/geopost/_main.html"
      app.directive "geopost", @geopost
