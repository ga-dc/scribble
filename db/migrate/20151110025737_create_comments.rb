class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.datetime :created_at
      t.datetime :updated_at
      t.text :text
      t.references :post, index: true, foreign_key: true
    end
  end
end
