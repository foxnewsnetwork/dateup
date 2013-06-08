'use strict'

define 'main', ["layout/footer", "geoboard/geothread"], (Footer, Geothread)-> 
  class Main
    @public_static_void = (app) -> new Main(app)
    constructor: (app) ->
      new Geothread app
      new Footer app
      app.controller 'MainCtrl', ($scope) ->
        $scope.awesomeThings = [
          'HTML5 Boilerplate',
          'AngularJS',
          'Karma'
        ]
