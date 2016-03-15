class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :timestamp
      t.string :comment_text
      t.references :post, index: true, foreign_key: true #I'm not sure what I need index and foreign key
    end
  end
end
