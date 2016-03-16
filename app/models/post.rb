class Post < ActiveController::Base
    belongs_to :user
    has_many :comments
    belongs_to :tag
end
