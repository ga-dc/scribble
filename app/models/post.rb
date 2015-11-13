class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :user
  has_many :tags, dependent: :destroy
  has_many :categories, through: :tags
end
