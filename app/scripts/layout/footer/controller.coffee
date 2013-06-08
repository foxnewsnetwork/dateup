define 'layout/footer/controller', [], ->
  class Controller
    constructor: ->
      @manage = ($scope) ->
        $scope.links = []
        $scope.links.push { "href": "#/not_implemented_yet", "action": "Interest 1"}
        $scope.links.push { "href": "#/not_implemented_yet", "action": "Interest 2"}
        $scope.links.push { "href": "#/not_implemented_yet", "action": "Interest 3"}
      @manage.$inject = ['$scope']
  return new Controller()