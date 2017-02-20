class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.references :post
      t.references :category
      t.timestamps
    end
  end
end
