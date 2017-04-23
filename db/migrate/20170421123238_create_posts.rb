class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.string :text
      t.string :category
    end
  end
end
