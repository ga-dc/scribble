class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :author_email
      t.string :post_content
      t.string :post_tag
      t.string :category
    end
  end
end
