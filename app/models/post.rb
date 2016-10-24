class Post < Article
  has_many :pictures
  # belongs_to :user
  field :body, type: String
end
