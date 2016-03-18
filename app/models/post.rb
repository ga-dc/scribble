class Post < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  has_many :comments, dependent: :destroy
  validates :title, uniqueness: :true, presence: :true
  belongs_to :user
end
