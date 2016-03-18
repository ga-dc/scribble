class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  # dependent: :destroy tells ruby to destroy all of this post's comments if the
  # post is removed.
end
