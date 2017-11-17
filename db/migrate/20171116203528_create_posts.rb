class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :subject, null: false
      t.string :text, null: false

      t.timestamps
    end
  end
end
