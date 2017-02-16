class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :content
      t.datetime :created_at
      t.datetime :date_time
    end
  end
end
