class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :text
      t.datetime :posted_at
    end
  end
end
