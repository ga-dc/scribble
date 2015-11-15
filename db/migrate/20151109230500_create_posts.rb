class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :username
      t.string :post_text
      t.datetime :created_at
      t.datetime :posted_at
    end
  end
end
