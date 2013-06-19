define "layout/navigation/controller", ["geoboard/tag/model"], (Tag) ->
  class Controller
    constructor: (app) ->
      @manage = ($scope, $routeParams) ->
        $scope.query = $routeParams["query"]
        arr = $routeParams["query"].split("-")
        $scope.links = []
        $scope.links.push Tag.backTag arr unless $routeParams["query"] is ""
        $scope.links = Tag.topLevelTags() if $routeParams["query"] is ""
        $scope.links = Tag.findFromArray arr
      @manage.$inject = ['$scope', '$routeParams']
      app.controller 'NavigationCtrl', @manage