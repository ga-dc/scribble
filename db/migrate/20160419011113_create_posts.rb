class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :subject
      t.string :body
      t.string :poster

      t.timestamps null: false
    end
  end
end
