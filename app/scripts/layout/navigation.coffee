define 'layout/navigation', ['layout/navigation/controller', 'layout/navigation/directive'], (Ctrl, Directive) ->
  class Navigation
    constructor: (app) ->
      new Directive app
      new Ctrl app