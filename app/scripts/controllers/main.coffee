'use strict'

angular.module('dateupApp')
  .controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ]

class GeoPost
  @generate = -> new GeoPost()
  constructor: ->
    @id = 1
    @user_id = 1
    @thread_id = 1
    @username = "anonymous"
    @image_link = null
    @content = "nothing"

angular.module('dateupApp').controller 'GeoThreadCtrl', ($scope) ->
  $scope.posts = [GeoPost.generate(), GeoPost.generate()]