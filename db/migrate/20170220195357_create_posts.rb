class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :user
      t.string :title
      t.string :content
    end
  end
end
