class Post < ActiveRecord::Base
  validates_presence_of :post_content
  has_many :comments
  belongs_to :user
end
