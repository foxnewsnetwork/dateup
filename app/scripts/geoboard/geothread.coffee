requirements = [
  'geoboard/geothread/controller', 
  'geoboard/geothread/model', 
  'geoboard/geothread/directive', 
  'geoboard/geothread/geopost'
]

define 'geoboard/geothread', requirements, (ctrl, model, directive, GeoPost)->
  class GeoThread
    constructor: (app) ->
      new GeoPost(app)
      app.controller 'GeoThreadCtrl', ctrl.index
      app.directive 'geothread', directive
