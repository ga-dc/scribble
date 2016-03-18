class RemoveCommentAuthorFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :comment_author, :string
  end
end
