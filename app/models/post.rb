class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :tags
  has_many :categories, through: :tags, dependent: :destroy
end
