class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.timestamps
      t.string :user
      # t.references :post, index: true, foreign_key: true
      # t.string :updated_by
      # t.string :created_by
    end
  end
end
