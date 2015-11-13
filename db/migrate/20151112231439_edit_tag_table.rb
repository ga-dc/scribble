class EditTagTable < ActiveRecord::Migration
  def change
    remove_column :tags, :post_id
    remove_column :tags, :category_id
    add_reference :tags, :category, index: true, foreign_key: true
    add_reference :tags, :post, index: true, foreign_key: true
  end
end
