requirements = ["tag", "geothread"].map (str) -> "geoboard/#{str}/model"
define "geoboard/controller", requirements, (Tag, Thread)->
  class Controller
    constructor: (app)->
      @index = ($scope, $routeParams) ->
        $scope.query = $routeParams["query"]
        $scope.tags = Tag.interestingTags(10)
        $scope.threads = Thread.interestingThreads(6)
      @index.$inject = ['$scope', '$routeParams']
      app.controller "GeoBoardCtrl", @index