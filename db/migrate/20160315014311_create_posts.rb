class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post_title
      t.string :post_datestamp
      t.string :post_text
      t.string :tag_title
      t.string :tag_text
      t.integer :post_id 
    end
  end
end
