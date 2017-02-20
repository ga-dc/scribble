class AddColumnToComments < ActiveRecord::Migration
  def change
    add_column :comments, :post_id, :integer, references: "Post"
  end
end
