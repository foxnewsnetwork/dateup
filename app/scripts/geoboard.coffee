requirements = [
  'geoboard/geothread',
  'geoboard/tag',
  'geoboard/controller'
]
define 'geoboard', requirements, (Thread, Tag, Ctrl) ->
  class Geoboard
    constructor: (app) ->
      new Thread app
      new Tag app
      new Ctrl app