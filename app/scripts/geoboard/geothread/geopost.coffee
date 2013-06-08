requirements = ['geoboard/geothread/geopost/controller', 'geoboard/geothread/geopost/model']
define 'geoboard/geothread/geopost', requirements, (ctrl, model) ->
  class Geopost
    constructor: (app) ->
      app.controller 'geothread/geopostctrl', ctrl.index