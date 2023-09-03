class Bar
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  validates :name, presence: true, uniqueness: true
  field :ubication, type: String
  validates :ubication, presence: true, uniqueness: true
  field :description, type: String
  validates :description, presence: true, uniqueness: true

  embeds_many :menu
  embeds_many :event
  embeds_many :post
  embeds_many :poster

end
