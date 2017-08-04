class CreatePosts < ActiveRecord::Migration[5.1]
    def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      t.string :photo_url
      t.timestamps
    end
  end
end
