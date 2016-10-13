class ChangeDatatypeOfColumnInComments < ActiveRecord::Migration[5.0]
  def change
    change_column :comments, :post, :string
  end
end
