class Comment < ApplicationRecord
  validates :author,  presence: true, length: {minimum: 5}
  belongs_to :post
end
