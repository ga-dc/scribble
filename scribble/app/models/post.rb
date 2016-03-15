class Post < ActiveRecord::Base
  has_many :comments
  resources :posts
end
