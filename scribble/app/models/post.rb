class Post < ActiveRecord::Base
  validates :topic, presence: true,
                  length: { minimum: 5 }
end
