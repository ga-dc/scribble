class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end

# class User < ActiveRecord::Base
#   has_many :artists
#   has_many :songs
# end
