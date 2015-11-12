class AddUserId < ActiveRecord::Migration
  def change
  	remove_column :comments, :commenter_name, :string
  	add_column :comments, :user_id, :integer
  end
end
