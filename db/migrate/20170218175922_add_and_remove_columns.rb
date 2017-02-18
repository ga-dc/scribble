class AddAndRemoveColumns < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :post_title, :string
    rename_column :posts, :name, :author
  end
end
