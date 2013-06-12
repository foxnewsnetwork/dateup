define 'geoboard/geothread/model', ['geoboard/geothread/geopost/model', 'faker'], (Post, F) -> 
  class Model
    @generate: -> new Model()
    @interestingThreads: (num)->
      [0..num].map => @generate()
    get_preview_posts: ->
      [Post.generate(@id), Post.generate(@id)]
    constructor: ->
      @id = Math.floor Math.random 100
      @user_id = Math.floor Math.random 100
      @position = [14, 22]
      @username = F.Name.findName()
      @posts = @get_preview_posts()
