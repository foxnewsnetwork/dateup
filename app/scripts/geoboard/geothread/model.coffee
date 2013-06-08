define 'geoboard/geothread/model', ['geoboard/geothread/geopost/model'], (Post) -> 
  class Model
    @generate = -> new Model()
    get_preview_posts: ->
      [Post.generate(@id), Post.generate(@id)]
    constructor: ->
      @id = 12
      @user_id = 11
      @position = [14, 22]
      @username = "anonymous"
      @posts = @get_preview_posts()