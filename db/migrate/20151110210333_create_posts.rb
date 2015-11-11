class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :body
      t.string :title
      t.string :category
      t.string :img_url
      t.datetime :created_at
      t.integer :user_id
    end
  end
end
