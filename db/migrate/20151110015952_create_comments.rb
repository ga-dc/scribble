class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :username
      t.string :comment
      t.datetime :created_at
      t.references :blog, index: true, foreign_key: true
    end
  end
end
