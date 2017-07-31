class Tag < ApplicationRecord
  belongs_to :post, :category
end
