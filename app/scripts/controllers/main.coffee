'use strict'

angular.module('dateupApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ]


class GeoPost
  @generate = -> { "user_id": 1, "content": "Something" }

angular.module('dateupApp').controller 'GeoThreadCtrl', ($scope) ->
  $scope.posts = [GeoPost.generate(), GeoPost.generate()]