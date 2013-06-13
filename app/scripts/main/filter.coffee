define 'main/filter', [], ->
  class Filter
    queryString: (input) -> encodeURI input || ""
    constructor: (app) ->
      app.filter "queryString", => @queryString