class Post < ActiveRecord::Base
  has_many :comments
  has_many :tags
  has_many :categories, through: :tags
end
