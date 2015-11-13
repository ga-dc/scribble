class ChangeColumnInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :posted_at, :edited_at
    rename_column :posts, :created_at, :posted_at
  end
end
