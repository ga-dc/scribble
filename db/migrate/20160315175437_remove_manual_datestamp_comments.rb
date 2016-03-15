class RemoveManualDatestampComments < ActiveRecord::Migration
  def change
    remove_column :comments, :timestamp, :string
  end
end
