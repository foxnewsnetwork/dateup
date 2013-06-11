define 'layout/footer', ['layout/footer/controller', 'layout/footer/directive'], (ctrl, directive) ->
  class Footer
    constructor: (app)->
      app.controller 'FooterDockCtrl', ctrl.manage
      app.directive 'footerdock', directive