class Post < ActiveRecord::Base
  has_many :tags
  has_many :comments
  has_many :categories
  belongs_to :user
end
