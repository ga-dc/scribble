class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: {in: 1..20}

end
