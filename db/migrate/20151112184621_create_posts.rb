class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :headline
      t.string :body
      t.string :image
      t.timestamps
    end
  end
end
