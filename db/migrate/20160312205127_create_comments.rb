class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.string :content
      t.timestamp :created_at
      t.timestamp :updated_at
      t.belongs_to :artist
    end
  end
end
