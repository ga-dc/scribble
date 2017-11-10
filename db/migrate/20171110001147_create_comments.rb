class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :body
      t.datetime :created_at
      t.references :post, index: true, foreign_key: true
    end
  end
end
