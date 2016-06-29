class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :topic

      t.datetime :created_at
      t.datetime :updated_at

      t.timestamp
    end
  end
end
