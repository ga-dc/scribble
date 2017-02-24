class Post < ActiveRecord::Base
  default_scope { order('updated_at DESC') }
  belongs_to :user
  has_many :comments, dependent: :destroy

end
