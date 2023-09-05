class Event
  include Mongoid::Document
    
  field :nameEvent, type: String # Nombre del evento
  validates :nameEvent, presence: true, uniqueness: true
  field :descEvent, type: String # Descripcion del evento
  validates :descEvent, presence: true, uniqueness: true
  field :hostEvent, type: String # Anfitrion del evento
  validates :hostEvent, presence: true, uniqueness: true
  field :fechaEvent, type: String # Anfitrion del evento
  validates :fechaEvent, presence: true, uniqueness: true
  field :horaEvent, type: String # Anfitrion del evento
  validates :horaEvent, presence: true, uniqueness: true
  field :url, type: String # Imagen del evento (Link)
  validates :url, presence: true, uniqueness: true
    
  embedded_in :bar
end
  