define 'layout/footer/controller', [], ->
  class Controller
    @instance = new Controller()
    constructor: ->
      @manage = ($scope) ->
        $scope.links = []
        $scope.links.push { "href": "#/geothreads", "action": "GS" }
        $scope.links.push { "href": "#/geothread/3", "action": "GP" }
      @manage.$inject = ['$scope']
  return Controller.instance