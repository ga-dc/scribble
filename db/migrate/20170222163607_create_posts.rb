class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :content
      t.integer :likes

      t.timestamps :updated_at
    end
  end
end
