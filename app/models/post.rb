class Post < ActiveRecord::Base
	validates :content, presence: true

	has_many :comments, dependent: :destroy
	# has_many :subjects, dependent: :destroy
end