class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.text :article
      t.integer :date
      t.references :post
      # t.integer :post_id, index: true, foreign_key: true
    end
  end
end
