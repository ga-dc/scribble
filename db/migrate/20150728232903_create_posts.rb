class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.datetime :date_created
      t.datetime :date_modified
      t.string :title
      t.string :body
    end
  end
end
