class AddAttributesToComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :comments
      t.datetime :commented_at
    end
  end
end
