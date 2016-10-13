class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.text :body
      t.text :title

      t.timestamps null: false
    end
  end
end
