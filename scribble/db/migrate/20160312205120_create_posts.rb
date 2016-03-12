class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :user
      t.string :content
      t.string :tags
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
