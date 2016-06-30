class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :text
      t.integer :post_id

      t.datetime :created_at
      t.datetime :updated_at

      t.timestamp
    end
  end
end
