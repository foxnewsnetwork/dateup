define 'geoboard/geothread/geopost/controller', ['geoboard/geothread/geopost/model'], (model) ->
  class Controller
    constructor: ->
      @index = ($scope, $routeParams) ->
        # threads = GeoThread.Model.where $routeParams
        # posts = threads.map (thread) -> thread.preview_posts() 
        # $scope.posts = posts.flatten
        $scope.posts = []
      @index.$inject = ['$scope', '$routeParams']
  return new Controller()