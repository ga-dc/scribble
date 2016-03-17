class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :commentor
      t.timestamps
      t.text :body
      t.integer :post_id
    end
  end
end
