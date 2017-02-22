class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment_text
      t.string :author
      t.string :created_at
      t.references :post
    end
  end
end
