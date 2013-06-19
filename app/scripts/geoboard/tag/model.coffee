define 'geoboard/tag/model', ["faker"], (F)->
  class Tree
    @new: (name) ->
      new Tree name
    constructor: (name)->
      @tagname = name
      @nodes = []
    branch: (tree) ->
      @nodes.push tree
      tree
    @root = ( ->
      root = Tree.new "tags"
      l1 = root.branch Tree.new "indoors"
      l2 = root.branch Tree.new "outdoors"
      l3 = root.branch Tree.new "travel"
      l4 = root.branch Tree.new "site news"

      l11 = l1.branch Tree.new "physical"
      l12 = l1.branch Tree.new "intellectual"
      
      l111 = l11.branch Tree.new "indoor tennis"
      l112 = l11.branch Tree.new "table tennis"
      l113 = l11.branch Tree.new "roller disco"
      root
    )()

  class Model
    @generate: -> new Model()
    @backTag: (array) ->
      m = Model.generate()
      m.rename array.join("-")
      m
    @findFromArray: (array) ->
      output = []
      reducer = (root, key) ->
        output.push root.nodes.map (node) -> 
          m = Model.generate() 
          m.rename node.tagname
          m.activate() if key is node.tagname
          m
        root.nodes[0]
      array.reduce reducer, Tree.root
      output[array.length] or []
    @interestingTags: (num) ->
      [0..num].map => @generate()
    @topLevelTags: ->
      ["indoors","outdoors","travel","site news"].map (tagname) ->
        m = Model.generate()
        m.tagname = tagname
        m
    constructor: ->
      @rename F.Name.findName()
      @link = "#asdf"
      @activate()
      @tag_id = Math.floor Math.random 1000
    activate: ->
      @active = true
    deactivate: ->
      @active = false
    rename: (name) ->
      @tagname = name