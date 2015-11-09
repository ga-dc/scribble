class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :text
      t.datetime :posted_at
    end
  end
end
