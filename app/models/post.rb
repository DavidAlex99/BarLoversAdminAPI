class Post
  include Mongoid::Document
    
  field :attribute1, type: String # Nombre del post
  field :attribute4, type: String # Imagen del post (Link)
    
  embedded_in :bar
end