class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment, null: false
      t.string :author
      t.references :post
    end
  end
end
