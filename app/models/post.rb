class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :categories
  has_many :tags, through: :categories


  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, length: {in: 1..20}

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).posts
  end
end
