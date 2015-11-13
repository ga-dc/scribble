class UpdateForeignKey < ActiveRecord::Migration
  def change
    remove_reference :comments, :posts
    add_reference :comments, :post, index: true
  end
end
