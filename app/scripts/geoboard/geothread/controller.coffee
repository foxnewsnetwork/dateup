define 'geoboard/geothread/controller', ['geoboard/geothread/model'], (Thread) ->
  class Controller
    constructor: (app) ->
      @show = ($scope, $routeParams) ->
        $scope.thread = Thread.find_by_id $routeParams["id"]
        $scope.stats = 
          post_count: $scope.thread.posts.length
      @show.$inject = ['$scope', '$routeParams']
      app.controller "GeoThreadCtrl#show", @show
