class AddTitleAndImage < ActiveRecord::Migration
  def change
    add_column :posts, :title, :string
    add_column :posts, :image_src, :string
  end
end
