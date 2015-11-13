class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
  has_many :tags
  has_many :categories, through: :tags
end
