class Comment < ApplicationRecord
  belongs_to :writer, class_name: 'Post', foreign_key: "post_id"
end
