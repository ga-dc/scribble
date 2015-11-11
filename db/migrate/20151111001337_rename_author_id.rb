class RenameAuthorId < ActiveRecord::Migration
  def change
    rename_column :blogs, :author_id, :author_name
    change_column :blogs, :author_name, :varchar
  end
end
