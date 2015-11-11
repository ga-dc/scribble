class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
   		t.string "author_name"
    	t.string "subject"
    	t.text   "content"
    end
  end
end
