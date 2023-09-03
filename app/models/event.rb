class Event
  include Mongoid::Document
    
  field :attribute1, type: String # Nombre del evento
  field :attribute4, type: String # Imagen del evento (Link)
    
  embedded_in :bar
end
  