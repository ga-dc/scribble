class Comment < ApplicationRecord
  belongs_to :post
  validates :author, :text, {presence: true}
end
