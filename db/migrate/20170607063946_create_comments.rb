class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment_name
      t.integer :num_comment
      t.string :comment_url

      t.timestamps
    end
  end
end
