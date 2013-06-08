'use strict'

define "config/routes", [], ->
  class Routes
    constructor: (app) ->
      app.config ($routeProvider) ->
        $routeProvider
          .when '/',
            templateUrl: 'views/main.html'
            controller: 'MainCtrl'
          .when '/geothreads',
            templateUrl: 'views/geoboard.html'
            controller: 'GeoThreadCtrl'
          .otherwise
            redirectTo: "/"