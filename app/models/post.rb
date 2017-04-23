class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  # validates :title, :description, {presence: true}
end
