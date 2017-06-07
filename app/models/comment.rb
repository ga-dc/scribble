class Comment < ApplicationRecord
  belongs_to :post
  validates :comment_name, :num_comment, :comment_url, {presence: true}

end
