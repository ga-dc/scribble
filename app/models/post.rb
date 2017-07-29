class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :title, :author, :content, { presence: true }
end
