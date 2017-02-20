class Post < ActiveRecord::Base
  belongs_user :user
  has_many :comments
end
