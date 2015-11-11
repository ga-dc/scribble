class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string "commenter_name"
    	t.text   "content"
    	t.references "blog"
    end
  end
end
