requirements = [
  'geoboard/geothread/geopost/controller', 
  'geoboard/geothread/geopost/model', 
  'geoboard/geothread/geopost/directive'
]
define 'geoboard/geothread/geopost', requirements, (ctrl, model, directive) ->
  class Geopost
    constructor: (app) ->
      app.directive 'geopost', directive