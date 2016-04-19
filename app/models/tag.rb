class Tag < ActiveRecord::Base
  has_many :categories
  has_many :posts, through: :categories
end
