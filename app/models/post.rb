class Post < ApplicationRecord
  has_many :comments
  validates :post_name, :topic, :post_url, {presence: true}
end
