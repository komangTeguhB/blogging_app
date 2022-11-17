class Post < ApplicationRecord
  validates :title, :content, presence: true
  has_many :comments, inverse_of: 'writer'
end
