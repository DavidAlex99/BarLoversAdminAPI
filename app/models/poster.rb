class Poster
  include Mongoid::Document
    
  field :attribute1, type: String # Nombre del lugar (tato fachada como el interior)
  field :attribute4, type: String # Imagen del lugar (Link)
    
  embedded_in :bar
end