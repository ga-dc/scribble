class Comment < ActiveRecord::Base
belongs_to :post
validates :name, :content, {presence: true}
end
