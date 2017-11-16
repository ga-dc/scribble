class AddAttributesToComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :comment
      t.references :post, foreign_key: true
      t.datetime :commented_at
    end
  end
end
