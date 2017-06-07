class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, :author, :text, {presence: true}
end
