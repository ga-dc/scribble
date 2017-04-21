class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.string :author_name
      t.belongs_to :post_id
    end
  end
end
