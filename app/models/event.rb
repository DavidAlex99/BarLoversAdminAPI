class Event
  include Mongoid::Document
    
  field :nameEvent, type: String # Nombre del evento
  validates :nameEvent, presence: true, uniqueness: true
  field :url, type: String # Imagen del evento (Link)
  validates :url, presence: true, uniqueness: true
    
  embedded_in :bar
end
  