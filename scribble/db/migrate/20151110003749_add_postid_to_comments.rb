class AddPostidToComments < ActiveRecord::Migration
  def change
    add_column :comments, :post_id, :text
  end
end
