class Post < ActiveRecord::base
	has_many :comments, dependent: :destroy
end