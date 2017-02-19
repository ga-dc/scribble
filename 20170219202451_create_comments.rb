class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :post
      t.string :body
      t.string :updated_by
      t.string :created_by
      t.references :post, index: true, foreign_key: true
    end
  end
end
