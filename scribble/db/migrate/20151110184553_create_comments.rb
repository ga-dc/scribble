class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      add_foreign_key :comments, :posts
    end
  end
end
