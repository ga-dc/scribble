class Comment < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  belongs_to :post
  validates :post, presence: true
  validates :comment_content, presence: true
  belongs_to :user
end
