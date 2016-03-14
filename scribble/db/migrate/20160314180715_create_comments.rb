class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.belongs_to :posts
      t.string :title
      t.string :author
      t.string :body
    end
  end
end
