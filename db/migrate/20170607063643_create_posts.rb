class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :post_name
      t.string :topic
      t.string :post_url

      t.timestamps
    end
  end
end
