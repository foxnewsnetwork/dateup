define 'geoboard/geothread/geopost/model', [], ->
  class Model
    constructor: (thread_id)->
      @id = 1
      @user_id = 1
      @thread_id = thread_id
      @username = "anonymous"
      @image_link = null
      @content = "nothing"
      