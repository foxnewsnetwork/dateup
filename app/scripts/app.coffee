'use strict'

angular.module('dateupApp', [])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/geothreads.html'
        controller: 'GeoThreadsCtrl'
      .when '/geothread/:id',
        templateUrl: 'views/geoposts.html'
        controller: 'GeoPostsCtrl'
      .otherwise
        redirectTo: "/"