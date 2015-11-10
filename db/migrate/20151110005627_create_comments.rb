class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :content
      t.datetime :created_at
      t.references :post
    end
  end
end
