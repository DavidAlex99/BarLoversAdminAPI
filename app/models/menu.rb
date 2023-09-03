class Menu
  include Mongoid::Document
    
  field :attribute1, type: String
  field :attribute2, type: Integer
  field :attribute3, type: String
  field :attribute4, type: String
    
  embedded_in :bar
end
  