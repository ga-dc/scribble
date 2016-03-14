class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :author
      t.string :author_email
      t.string :post
      t.string :post_tag
      t.string :category
    end
  end
end
