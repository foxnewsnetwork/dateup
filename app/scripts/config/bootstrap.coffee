requirements = ["config/routes","angular", "angular-resource", "angular-cookies", "angular-sanitize"]
define "config/bootstrap", requirements, (Router)->
  class Bootstrap
    @doit = -> new Bootstrap()
    constructor: ->
      @app = angular.module('dateupApp', [])
      new Router @app