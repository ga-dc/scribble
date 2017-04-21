class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.string :date_created
      t.integer :date_upated
      t.integer :author_id
    end
  end
end
