define 'main/controller', ['geoboard/geothread/model', "geoboard/tag/model"], (Geothread, Tag)->
  class Controller
    constructor: (app) ->
      app.controller 'MainCtrl', ($scope) ->
        $scope.app_name = "DateupApp"
        $scope.location = "Hell"
        $scope.threads = Geothread.interestingThreads()
        $scope.tags = Tag.interestingTags()
        $scope.search = ->
          $scope.threads = Geothread.search $scope.query