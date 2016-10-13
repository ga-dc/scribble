class Category < ApplicationRecord
  belongs_to :post
  has_many :tags
end
