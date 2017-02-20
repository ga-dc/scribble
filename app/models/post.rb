class Post < ActiveRecord::Base
  # belongs_to :user, dependent: :destroy
  has_many :comments, dependent: :destroy
end


# class Artist < ActiveRecord::Base
#   has_many :songs, dependent: :destroy
#   validates :name, uniqueness: :true, presence: :true
#   belongs_to :user
# end
