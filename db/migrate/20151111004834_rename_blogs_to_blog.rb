class RenameBlogsToBlog < ActiveRecord::Migration
  def change
  	rename_table :blogs, :blog
  end
end
