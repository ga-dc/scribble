class Comment < ApplicationRecord
  # belongs_to :post , dependent: :destroy
  belongs_to :post
end
