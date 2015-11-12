class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :headline
      t.string :body
      t.string :image
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
