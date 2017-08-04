class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.references :post, foreign_key: true
      t.references :category, foreign_key: true
    end
  end
end
