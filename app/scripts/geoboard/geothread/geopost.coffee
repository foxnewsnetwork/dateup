requirements = [
  'geoboard/geothread/geopost/controller', 
  'geoboard/geothread/geopost/model', 
  'geoboard/geothread/geopost/directive'
]
define 'geoboard/geothread/geopost', requirements, (Ctrl, model, Directive) ->
  class Geopost
    constructor: (app) ->
      new Ctrl app
      new Directive app
