class AddAttributesToPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :content
      t.integer :likes
      t.datetime :created_at
    end
  end
end
