class Post < ActiveRecord::Base
    has_many :comments, dependent: :destroy
    validates :pContent, :title, {presence: true}
end