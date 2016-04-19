class Post < ActiveRecord::Base
  has_many :comments
  has_many :tags
  has_many :categories, through: :tags
  validates :body, presence: true
  validates :title, presence: true
  validates :author, presence: true


  def all_tags=(raw_tags)
    split_tags = raw_tags.split(", ")
    self.categories = split_tags.map { |tag_name| Category.where(name: tag_name.strip).first_or_create!}
  end

  def all_tags
    self.categories
  end
end
