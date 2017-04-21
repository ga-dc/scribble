class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
    	t.string :category
    	t.string :title
    	t.string :photo_url
    	t.string :text

    end
  end
end
