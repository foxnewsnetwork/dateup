require.config
  paths:
    "angular": "components/angular/angular",
    "angular-resource": "components/angular-resource/angular-resource",
    "angular-cookies": "components/angular-cookies/angular-cookies",
    "angular-sanitize": "components/angular-sanitize/angular-sanitize",
    "config/routes": "scripts/config/routes",
    "config/bootstrap": "scripts/config/bootstrap",
    "main": "scripts/main",
    "layout/footer": "scripts/layout/footer",
    "layout/footer/controller": "scripts/layout/footer/controller",
    "geoboard/geothread": "scripts/geoboard/geothread",
    "geoboard/geothread/controller": "scripts/geoboard/geothread/controller",
    "geoboard/geothread/directive": "scripts/geoboard/geothread/directive",
    "geoboard/geothread/model": "scripts/geoboard/geothread/model",
    "geoboard/geothread/geopost": "scripts/geoboard/geothread/geopost",
    "geoboard/geothread/geopost/controller": "scripts/geoboard/geothread/geopost/controller",
    "geoboard/geothread/geopost/model": "scripts/geoboard/geothread/geopost/model",
    "geoboard/geothread/geopost/directive": "scripts/geoboard/geothread/geopost/directive"
  shim:
    "angular-resource": 
      deps: ["angular"]
    "angular-cookies": 
      deps: ["angular"]
    "angular-sanitize": 
      deps: ["angular"]


require ['config/bootstrap', 'main'], (Bootstrap, Main) ->
  Main.public_static_void Bootstrap.doit().app