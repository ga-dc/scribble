class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :post
      t.string :post_id
      t.string :title
      t.text :content
      t.references :user, index: true, foreign_key: true
    end
    add_index :posts, :post_id
  end
end
