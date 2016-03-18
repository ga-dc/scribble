class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.string :comment_author
      t.references :post, index: true, foreign_key: true
    end
  end
end
