class ChangeColumnInComments < ActiveRecord::Migration
  def change
    rename_column :comments, :post, :comment
  end
end
