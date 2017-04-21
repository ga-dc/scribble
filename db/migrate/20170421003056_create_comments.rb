class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author_id
      t.string :author_name
      t.references :post, foreign_key: true
    end
  end
end
