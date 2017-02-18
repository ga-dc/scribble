class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :post_text
      t.datetime :created_on
      t.datetime :updated_on
    end
  end
end
