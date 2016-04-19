class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { in: 3..40 }
  validates :text, presence: true,
                  length: {minimum: 10}
end
