class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :comment_text
      t.datetime :created_at
      t.datetime :edited_at
    end
  end
end
