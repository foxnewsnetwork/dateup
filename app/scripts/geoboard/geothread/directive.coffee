define 'geoboard/geothread/directive', [], ->
  class Directive
    constructor: (app) ->
      @geothreadpreview = ->
        restrict: "E",
        templateUrl: "views/geoboard/geothread/_preview.html"
      app.directive "geothreadpreview", @geothreadpreview

      @geothread = ->
        restrict: "E",
        templateUrl: "views/geoboard/geothread/_main.html"
      app.directive "geothread", @geothread