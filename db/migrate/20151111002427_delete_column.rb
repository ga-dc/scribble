class DeleteColumn < ActiveRecord::Migration
  def change
    remove_column :posts, :date
  end
end
