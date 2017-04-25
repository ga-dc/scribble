class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :user
      t.string :comment

      t.timestamps 
      t.belongs_to :post
    end
  end
end
