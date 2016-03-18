class ChangeColumnInComments < ActiveRecord::Migration
  def change
    rename_column :comments, :artist_id, :post_id
  end
end
