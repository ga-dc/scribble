class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :updated_by
      t.string :created_by
      t.references :artist, index: true, foreign_key: true
    end
  end
end
