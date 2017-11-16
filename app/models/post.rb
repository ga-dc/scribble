class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :categories, through: :tags
  validates :title, :body, :author, {presence: true}
end
