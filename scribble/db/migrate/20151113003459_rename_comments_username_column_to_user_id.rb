class RenameCommentsUsernameColumnToUserId < ActiveRecord::Migration
  def change
    rename_column :comments, :username, :user_id
  end
end
