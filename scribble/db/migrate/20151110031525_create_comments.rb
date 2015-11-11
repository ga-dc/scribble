class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :id
      t.string :username
      t.string :content
      t.datetime :created_at
    end
  end
end
