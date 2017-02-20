class ChangePostsCreatedAtToDatetime < ActiveRecord::Migration
  def change
    change_column(:posts, :created_at, :datetime)
  end
end
