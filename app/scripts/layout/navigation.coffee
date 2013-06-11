define 'layout/navigation', ['layout/navigation/controller', 'layout/navigation/directive'], (ctrl, directive) ->
  class Navigation
    constructor: (app) ->
      app.controller "NavigationCtrl", ctrl.manage
      app.directive "navigation", directive