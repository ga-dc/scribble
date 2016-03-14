class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :id
      t.string :name
      t.string :author
      t.string :author_email
      t.timestamp :post_date
      t.text :post
      t.string :post_tag
      t.string :category
      t.references :comment, index: true, foreign_key: true
    end
  end
end
