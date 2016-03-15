class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentor
      t.timestamps
      t.boolean :reaction
      t.integer :post_id
    end
  end
end
