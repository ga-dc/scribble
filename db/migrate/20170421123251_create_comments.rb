class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :user
      t.string :text
      t.integer :post_id
    end
  end
end
