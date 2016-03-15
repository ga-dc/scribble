class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.id :id
      t.string :title
      t.author :author
      t.timestamp
      t.text :post_content
      t.tag :tag_id
    end
  end
end
