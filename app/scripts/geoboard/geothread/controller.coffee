define 'geoboard/geothread/controller', ['geoboard/geothread/model'], (model) ->
  class Controller
    constructor: ->
      @index = ($scope) ->
        $scope.threads = [model.generate(), model.generate()]
      @index.$inject = ['$scope']
  return new Controller()