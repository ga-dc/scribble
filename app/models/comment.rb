class Comment < ActiveRecord::Base
  belongs_to :post
  validates :cContent, {presence: true}
end