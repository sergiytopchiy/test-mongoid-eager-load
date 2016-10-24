class Article
  include Mongoid::Document
  belongs_to :user
  field :title, type: String
end
