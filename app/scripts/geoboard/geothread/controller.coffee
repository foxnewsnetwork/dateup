define 'geoboard/geothread/controller', ['geoboard/geothread/model'], (Thread) ->
  class Controller
    constructor: ->
      @index = ($scope) ->
        $scope.threads = [Thread.generate(), Thread.generate()]
      @index.$inject = ['$scope']
  return new Controller()