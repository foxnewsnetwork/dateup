requirements = [
  'geoboard/geothread/controller', 
  'geoboard/geothread/model', 
  'geoboard/geothread/directive', 
  'geoboard/geothread/geopost'
]

define 'geoboard/geothread', requirements, (Ctrl, model, Directive, GeoPost)->
  class GeoThread
    constructor: (app) ->
      new GeoPost(app)
      new Ctrl(app)
      new Directive(app)
