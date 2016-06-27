class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :post_content
      t.string :author_photo_url
      t.string :post_photo_url
      t.timestamps null: false
    end
  end
end
