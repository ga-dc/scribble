class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.datetime :created_on
      t.string :content
      t.string :photo_url
      t.string :link
    end
  end
end
