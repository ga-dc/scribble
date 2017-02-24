class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
#      t.string :comment_author
      t.string :comment_title
      t.text :comment_text
      t.references :
      t.timestamps
    end
  end
end
