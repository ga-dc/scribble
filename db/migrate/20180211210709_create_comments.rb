class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :title
      t.string :content
      t.belongs_to :post, foreign_key: true
    end
  end
end
