class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :user_id
      t.string :content
      t.integer :post_id
    end
  end
end
