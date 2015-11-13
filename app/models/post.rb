class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :tags
  has_many :categories, through: :tags
  validates :text, presence: true
end
