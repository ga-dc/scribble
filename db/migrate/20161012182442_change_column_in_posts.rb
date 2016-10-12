class ChangeColumnInPosts < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :topic, :body
  end
end
