class AddReferenceToPostsInComments < ActiveRecord::Migration
  def change
    remove_column :comments, :post_id
    add_reference :comments, :post, index: true
    add_foreign_key :comments, :posts
  end
end
