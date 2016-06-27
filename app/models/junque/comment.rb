class Comment < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
end
