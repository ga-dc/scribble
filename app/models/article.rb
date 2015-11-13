class Article < ActiveRecord::Base
  validates :title, presence: true, #if the form  is being filled correctly.
  length: { minimum: 5 }
  default_scope { order('updated_at DESC') }
  has_many :comments
  belongs_to :user
end

# we want this actions to happen as near to the dabase as possible.
