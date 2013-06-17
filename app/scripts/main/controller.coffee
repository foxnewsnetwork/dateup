define 'main/controller', ['geoboard/geothread/model', "geoboard/tag/model"], (Geothread, Tag)->
  class Controller
    constructor: (app) ->
      app.controller 'MainCtrl#index', ($scope) ->
        $scope.app_name = "DateupApp"
        $scope.location = "Hell"
        $scope.threads = Geothread.interestingThreads 2
        $scope.tags = Tag.interestingTags 2
        $scope.announcements = [0..2].map -> 
          { speaker: "me", content: Geothread.generate().posts[0].content }
