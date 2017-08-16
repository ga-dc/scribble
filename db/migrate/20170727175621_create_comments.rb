class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
      t.references :post
    end
  end
end
