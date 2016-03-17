class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :post_content
      t.string :post_author
    end
  end
end
