class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :subject, :body, :poster, presence: true
end
