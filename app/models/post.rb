class Post < ApplicationRecord
  has_many :comments
  validates :title, :author, :text, {presence: true}
end
