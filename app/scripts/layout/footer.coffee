define 'layout/footer', ['layout/footer/controller'], (ctrl) ->
  class Footer
    constructor: (app)->
      app.controller 'FooterDockCtrl', ctrl.manage