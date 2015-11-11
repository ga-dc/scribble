class Comment < ActiveRecord::Base
  belongs_to :post
  validates :subject, presence: true,
                    length: { minimum: 5 }
end
