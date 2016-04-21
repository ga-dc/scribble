class Post < ActiveRecord::Base
  has_many    :comments, dependent: :destroy
  has_many    :categories
  validates   :title, presence: true,
                    length: {minimum: 5}
  validates   :text, presence: true,
                    length: {minimum: 5, maximum: 140}
end
