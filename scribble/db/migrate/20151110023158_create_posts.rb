class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id
      t.string :title
      t.string :content
      t.datetime :created_at
    end
  end
end
