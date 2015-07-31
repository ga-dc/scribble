class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :comment
      t.references :post, index: true, foreign_key: true
      t.timestamp :created_at
    end
  end
end
