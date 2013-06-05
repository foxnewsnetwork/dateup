'use strict'

angular.module('dateupApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/geothreads',
        templateUrl: 'views/geothreads.html'
        controller: 'GeoThreadCtrl'
      .otherwise
        redirectTo: "/"