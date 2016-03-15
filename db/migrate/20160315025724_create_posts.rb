class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.id :id
      t.title :title_of_post
      t.timestamp
      t.text :post_content
      t.tag :tag_id
    end
  end
end
