class Posts < ActiveRecord::Base
  has_many :comments
end
