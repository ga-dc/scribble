class Comment < ActiveRecord::Base
  # belongs_to :user, dependent: :destroy
  belongs_to :post, dependent: :destroy
  validates :post, presence: true
end

# class Song < ActiveRecord::Base
#   belongs_to :artist
#   validates :artist, presence: true
#   validates :title, presence: true
#   belongs_to :user
# end
