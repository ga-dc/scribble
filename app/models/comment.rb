class Comment < ActiveRecord::Base
  belongs_to :post

  # post_id :true

end
