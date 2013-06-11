requirements = [
  "directive",
  "model"
].map (str) -> "geoboard/tag/#{str}"
define "geoboard/tag", requirements, (Directive) ->
  class Tag
    constructor: (app) ->
      app.directive 'geotag', Directive
