class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :body
      t.references :post, index: true, foreign_key: true
    end
  end
end
