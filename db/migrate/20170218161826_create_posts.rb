class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :post_author
      t.string :post_title
      t.string :post_text
      t.timestamps
    end
  end
end
