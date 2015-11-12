class RemoveUsernameColumnFromPostsComments < ActiveRecord::Migration
  def change
    remove_column :posts, :username
    remove_column :comments, :username
    add_column :users, :username, :string
  end
end
