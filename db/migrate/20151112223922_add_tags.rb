class AddTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.references :post
      t.references :category
    end
  end
end
