class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text      :post
      t.datetime  :date
      t.references :post, index: true, foreign_key: true
    end
  end
end
