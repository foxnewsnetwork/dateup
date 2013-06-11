define 'geoboard/geothread/geopost/model', ['faker'], (F)->
  class Model
    @generate = (thread_id) -> new Model thread_id
    constructor: (thread_id)->
      @id = Math.floor Math.random 100
      @user_id = Math.floor Math.random 100
      @thread_id = thread_id
      @username = F.Name.findName()
      @image_link = null
      @content = F.Lorem.paragraph 1 + Math.floor Math.random 10
      