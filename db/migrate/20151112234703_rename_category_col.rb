class RenameCategoryCol < ActiveRecord::Migration
  def change
    remove_column :categories, :category
    add_column :categories, :descrip, :string
  end
end
