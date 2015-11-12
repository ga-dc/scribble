class ChangeColumnInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :date, :created_at
  end
end
