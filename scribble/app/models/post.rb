class Post < ActiveRecord::Base
  has_many :comments
  validates :topic, presence: true,
                  length: { minimum: 5 }
end
