class RemoveManualDatestampPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :post_datestamp, :string
  end
end
