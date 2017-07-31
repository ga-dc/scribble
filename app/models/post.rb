class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :tags, dependent: :destroy

  validates :title, :author, :content, { presence: true }
end
