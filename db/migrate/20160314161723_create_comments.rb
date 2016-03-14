class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :comment
      t.string :comment_email
      t.integer :post_id
    end
  end
end
