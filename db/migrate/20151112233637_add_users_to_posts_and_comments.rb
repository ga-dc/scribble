class AddUsersToPostsAndComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer
    add_foreign_key :comments, :users
    add_column :posts, :user_id, :integer
    add_foreign_key :posts, :users
  end
end
