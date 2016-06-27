class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_content
      t.string :commenter
      t.string :commenter_photo
      t.timestamps null: false
    end
  end
end
