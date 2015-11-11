class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :text
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
