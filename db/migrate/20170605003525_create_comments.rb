class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.string :text
      t.string :date
      t.references :posts, foreign_key: true
    end
  end
end
