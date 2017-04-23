class Comment < ActiveRecord::Base
belongs_to :post
# validates :author_name, :content, {presence: true}
end
