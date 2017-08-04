class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :content
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
