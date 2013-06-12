define 'geoboard/tag/model', ["faker"], (F)->
  class Model
    @generate: -> new Model()
    @interestingTags: (num) ->
      [0..num].map => @generate()
    constructor: ->
      @tagname = F.Name.findName()
      @tag_id = Math.floor Math.random 1000