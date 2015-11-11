class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :user_id
      t.references :post, index: true, foreign_key: true
      t.datetime :timestamp
    end
  end
end
