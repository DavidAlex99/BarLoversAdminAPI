class Post
  include Mongoid::Document
    
  field :namePost, type: String # Nombre del post
  validates :namePost, presence: true, uniqueness: true
  field :url, type: String # Imagen del post (Link)
  validates :url, presence: true, uniqueness: true
    
  embedded_in :bar
end