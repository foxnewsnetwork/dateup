define 'layout/navigation/directive', [], ->
  class Directive
    restrict: "E"
    templateUrl: "views/layout/_navigation.html"
    constructor: (app) ->
      unless app is undefined
        app.directive "navigation", -> new Directive() 
