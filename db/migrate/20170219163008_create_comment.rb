class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :text
      t.integer :timestamp
      t.integer :post_id
    end
  end
end
