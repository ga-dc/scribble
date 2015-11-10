class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.integer :date
      t.references :comment, index: true, foreign_key: true
    end
  end
end
