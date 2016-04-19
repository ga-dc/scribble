class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.string :author
      t.string :title
      t.integer :post_id

      t.timestamps null: false
    end
  end
end
