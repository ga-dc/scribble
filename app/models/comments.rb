class Comment < ActiveRecord::Base
  default_scope { order('updated_at DESC') } # sorts by updated at in reverse order
  belongs_to :article
  belongs_to :user
end
