class Post < ApplicationRecord
  validates :title, :text, presence: true
  has_many :comments, dependent: :destroy
end
