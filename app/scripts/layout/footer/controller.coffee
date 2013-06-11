define 'layout/footer/controller', [], ->
  class Controller
    constructor: ->
      @manage = ($scope) ->
        $scope.links = []
        $scope.links.push { "href": "#/not_implemented_yet", "action": "Threads"}
      @manage.$inject = ['$scope']
  return new Controller()