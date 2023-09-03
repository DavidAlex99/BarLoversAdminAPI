class Poster
  include Mongoid::Document
    
  field :namePhoto, type: String # Nombre del lugar (tanto fachada como el interior)
  validates :namePhoto, presence: true, uniqueness: true
  field :url, type: String # Imagen del lugar (Link)
  validates :url, presence: true, uniqueness: true
    
  embedded_in :bar
end