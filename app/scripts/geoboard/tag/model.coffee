define 'geoboard/tag/model', ["faker"], (F)->
  class Model
    @generate = -> new Model()
    @interestingTags: ->
      [0..Math.floor(Math.random() * 15)].map => @generate()
    constructor: ->
      @tagname = F.Name.findName()
      @tag_id = Math.floor Math.random 1000