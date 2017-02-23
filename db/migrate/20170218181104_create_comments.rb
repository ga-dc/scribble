class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment_author
      t.string :comment_title
      t.string :comment_text
      t.timestamps
    end
  end
end
