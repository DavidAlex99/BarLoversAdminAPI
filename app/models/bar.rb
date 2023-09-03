class Bar
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :ubication, type: String
  field :description, type: String
  embeds_many :menu
  embeds_many :event
  embeds_many :post
  embeds_many :poster
end
