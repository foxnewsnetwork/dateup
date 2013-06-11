define 'main/controller', ['geoboard/geothread/model'], (Geothread)->
  class Controller
    constructor: (app) ->
      app.controller 'MainCtrl', ($scope) ->
        $scope.app_name = "DateupApp"
        $scope.location = "Hell"
        $scope.threads = Geothread.search $scope.query
        $scope.tags = []
        $scope.tags.push { tagname: "Interest#1" }
        $scope.search = ->
          $scope.threads = Geothread.search $scope.query