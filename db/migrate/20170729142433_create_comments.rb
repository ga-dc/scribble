class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :username
      t.string :content
      t.datetime :created_on
      t.integer :rating
      t.references :post
    end
  end
end
