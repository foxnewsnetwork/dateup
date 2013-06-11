define 'geoboard', ['geoboard/geothread','geoboard/tag'], (Thread, Tag) ->
  class Geoboard
    constructor: (app) ->
      new Thread app
      new Tag app