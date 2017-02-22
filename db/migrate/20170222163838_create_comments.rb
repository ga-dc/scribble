class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :author
      t.references :post, foreign_key: true

       t.timestamps :updated_at
    end
  end
end
