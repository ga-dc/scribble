class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :id
      t.string :name
      t.text :comment
      t.string :comment_email
      t.timestamps :comment_time
      t.integer :post_id
      t.belongs_to :post
      t.references :post , index: true, foreign_key: true
    end
  end
end
