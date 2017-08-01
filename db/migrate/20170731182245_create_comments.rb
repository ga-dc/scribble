class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :name
      t.timestamps
      t.references :post
    end
  end
end
