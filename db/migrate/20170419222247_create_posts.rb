class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :img_url
      t.string :author
      t.string :text

      t.timestamps
    end
  end
end
