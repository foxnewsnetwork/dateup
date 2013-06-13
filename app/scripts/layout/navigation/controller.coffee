define "layout/navigation/controller", [], ->
  class Controller
    constructor: (app) ->
      @manage = ($scope, $routeParams) ->
        $scope.query = $routeParams["query"]
        $scope.links = []
        [0..4].forEach ->
          $scope.links.push 
            "href": "#/not_implemented_yet", 
            "action": "Interest 1", 
            "image" : "http://placehold.it/200x200"
      @manage.$inject = ['$scope', '$routeParams']
      app.controller 'NavigationCtrl', @manage