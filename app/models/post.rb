class Post < ActiveController::Base
    belongs_to :user
    has_many :comments
end
