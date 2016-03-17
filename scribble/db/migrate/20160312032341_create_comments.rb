class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.string :content
      t.integer :post_id
    end
  end
end
