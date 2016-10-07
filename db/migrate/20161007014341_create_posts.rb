class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :article
      t.integer :author_id
      t.boolean :comments_enabled
      t.datetime :date_published
      t.string :banner_url
      t.integer :views
      t.boolean :enabled
    end
  end
end
