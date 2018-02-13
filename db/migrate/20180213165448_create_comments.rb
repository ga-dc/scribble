class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string  :cContent, null: false
      t.references :post, null: false, index:true, foreign_key: true
    end
  end
end
