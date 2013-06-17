'use strict'

define "config/routes", [], ->
  class Routes
    constructor: (app) ->
      app.config ($routeProvider) ->
        $routeProvider
          .when '/',
            templateUrl: 'views/main/index.html'
            controller: 'MainCtrl#index'
          .when '/q/:query',
            templateUrl: 'views/geoboard/index.html'
            controller: 'GeoBoardCtrl#index'
          .when '/res/:id',
            templateUrl: 'views/geoboard/geothread/show.html'
            controller: 'GeoThreadCtrl#show'
          .otherwise
            redirectTo: "/"