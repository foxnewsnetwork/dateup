define 'geoboard/geothread/model', [], -> 
  class Model
    @generate = -> new Model()
    get_preview_posts: ->
      []
    constructor: ->
      @id = 12
      @user_id = 11
      @position = [14, 22]
      @username = "anonymous"
      @preview_posts = @get_preview_posts()