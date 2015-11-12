class AddUserIdBlog < ActiveRecord::Migration
  def change
  	remove_column :blogs, :author_name, :string
  	add_column :blogs, :user_id, :integer
  end
end
