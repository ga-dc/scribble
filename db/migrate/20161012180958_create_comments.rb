class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :user_id
      t.boolean :enabled
      t.datetime :date
      t.references :post, foreign_key: true
    end
  end
end
