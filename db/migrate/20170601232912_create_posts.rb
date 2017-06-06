class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    	t.string :username
    	t.string :subject
    	t.string :content
    	t.datetime :created_at
    end
  end
end
