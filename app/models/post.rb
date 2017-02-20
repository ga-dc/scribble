class Post < ActiveRecord::Base
  has_many    :comments, dependent: :destroy
  has_many    :tags, dependent: :destroy
  has_many    :categories, through: :tags
  validates   :title, presence: true,
                    length: {minimum: 2}
  validates   :text, presence: true,
                    length: {minimum: 5, maximum: 140}
end
