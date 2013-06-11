'use strict'

requirements = [
  "main/controller", 
  "main/filter", 
  "layout",
  "geoboard"]
  
define 'main', requirements, (MainCtrl, Filters, Layout, Geoboard)-> 
  class Main
    @public_static_void = (app) -> new Main(app)
    constructor: (app) ->
      new Layout app
      new Geoboard app
      new MainCtrl app
      new Filters app
