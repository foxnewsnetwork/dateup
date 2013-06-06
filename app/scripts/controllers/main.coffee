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
  constructor: (thread_id)->
    @id = 1
    @user_id = 1
    @thread_id = thread_id
    @username = "anonymous"
    @image_link = null
    @content = "nothing"
  @index = ($scope, $routeParams) ->
    $scope.posts = [GeoPost.generate(), GeoPost.generate()]

GeoPost.index.$inject = ['$scope', '$routeParams']

angular.module('dateupApp').controller 'GeoPostsCtrl', GeoPost.index

class GeoThread
  @generate = -> new GeoThread()
  get_preview_posts: ->
    [GeoPost.generate(), GeoPost.generate()]
  constructor: ->
    @id = 12
    @user_id = 11
    @position = [14, 22]
    @username = "anonymous"
    @preview_posts = @get_preview_posts()
  @index = ($scope) ->
    $scope.threads = [GeoThread.generate(), GeoThread.generate()]

angular.module("dateupApp").controller 'GeoThreadsCtrl', GeoThread.index

class FooterDock
  @controller = ($scope) ->
    $scope.links = []
    $scope.links.push { "href": "#/geothreads", "action": "GS" }
    $scope.links.push { "href": "#/geothread/3", "action": "GP" }

angular.module("dateupApp").controller 'FooterDockCtrl', FooterDock.controller