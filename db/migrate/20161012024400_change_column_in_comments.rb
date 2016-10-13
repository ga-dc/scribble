class ChangeColumnInComments < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :post_id, :post
  end
end
