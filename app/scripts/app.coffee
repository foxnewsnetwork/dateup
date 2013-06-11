require.config
  paths:
    "angular": "components/angular/angular",
    "angular-resource": "components/angular-resource/angular-resource",
    "angular-cookies": "components/angular-cookies/angular-cookies",
    "angular-sanitize": "components/angular-sanitize/angular-sanitize",
    "config/routes": "scripts/config/routes",
    "config/bootstrap": "scripts/config/bootstrap",
    "main": "scripts/main",
    "main/controller": "scripts/main/controller",
    "main/filter": "scripts/main/filter",
    "layout": "scripts/layout",
    "layout/footer": "scripts/layout/footer",
    "layout/footer/controller": "scripts/layout/footer/controller",
    "layout/footer/directive": "scripts/layout/footer/directive",
    "layout/navigation": "scripts/layout/navigation",
    "layout/navigation/controller": "scripts/layout/navigation/controller",
    "layout/navigation/directive": "scripts/layout/navigation/directive",
    "geoboard": "scripts/geoboard",
    "geoboard/tag": "scripts/geoboard/tag",
    "geoboard/tag/model": "scripts/geoboard/tag/model",
    "geoboard/tag/directive": "scripts/geoboard/tag/directive",
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