define 'geoboard/geothread/geopost/controller', ['geoboard/geothread/geopost/model'], (model) ->
  class Controller
    constructor: (app) ->
      @index = ($scope, $routeParams) ->
        $scope.posts = []
      @index.$inject = ['$scope', '$routeParams']
      app.controller "GeoPostCtrl#index", @index
