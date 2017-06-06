class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :subjects, dependent: :destroy
end