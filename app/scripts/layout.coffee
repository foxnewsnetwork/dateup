define 'layout', ['layout/footer','layout/navigation'], (Footer, Navigation) ->
  class Layout
    constructor: (app) ->
      new Footer app
      new Navigation app