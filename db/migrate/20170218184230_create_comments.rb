class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :author
      t.integer :timestamp
      t.integer :likes
      t.references :post, foreign_key: true
    end
  end
end
