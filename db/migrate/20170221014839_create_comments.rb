class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :message
      t.timestamps
      t.references :post, foreign_key: true
    end
  end
end
