class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :content
      t.string :image_url
      t.datetime :created_at
    end
  end
end
