class Comment < ActiveRecord::Base
  belongs_to :post
    # validates :comment, :post_id, presence: true, length: {minimum: 4}
end
