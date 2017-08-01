class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.string :comment_by
      t.references :post, foreign_key: true
    end
  end
end
