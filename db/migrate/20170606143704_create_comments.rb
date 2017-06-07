class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.string :user
      t.references :post
      t.timestamps
    end
  end
end
