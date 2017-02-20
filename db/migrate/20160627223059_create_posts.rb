class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body
      t.string :author
      t.string :photo_url
      t.timestamps null: false
    end
  end
end
