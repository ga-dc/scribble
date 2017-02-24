class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment_by
      t.string :content
      t.integer :post_id

    end
  end
end
