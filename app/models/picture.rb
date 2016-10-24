class Picture
  include Mongoid::Document
  belongs_to :post
  field :title, type: String
end
