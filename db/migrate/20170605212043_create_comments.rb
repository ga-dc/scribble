class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :user
      t.string :comment
      t.references :post, null: false, index:true

      t.timestamps
    end
  end
end
