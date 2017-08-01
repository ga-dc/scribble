class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :string
      t.string :created_at
      t.string :datetime
      t.references :post, foreign_key: true
    end
  end
end
