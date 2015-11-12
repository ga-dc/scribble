class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    t.string :body
    t.string :photo_url
    t.string :title


    end
  end
end
