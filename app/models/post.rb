class Post < ActiveRecord::Base
  has_many :comments
  has_many :categorys
  has_many :tags
end
