class Menu
  include Mongoid::Document
    
  field :name, type: String
  validates :name, presence: true, uniqueness: true
  field :price, type: Integer
  validates :price, presence: true, uniqueness: true
  field :namePhoto, type: String
  validates :namePhoto, presence: true, uniqueness: true
  field :url, type: String
  validates :url, presence: true, uniqueness: true  
  
  embedded_in :bar
end
  