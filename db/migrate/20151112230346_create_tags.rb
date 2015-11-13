class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :post
      t.references :category
      t.timestamps null: false
    end
  end
end
