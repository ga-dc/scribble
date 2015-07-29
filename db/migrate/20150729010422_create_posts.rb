class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.text :article
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
