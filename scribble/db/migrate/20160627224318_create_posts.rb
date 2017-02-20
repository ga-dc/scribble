class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :topic
      t.text :text

      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
