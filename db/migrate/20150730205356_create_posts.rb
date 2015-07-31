class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.string :summary
      t.string :body
      t.string :video_url
      t.string :date_posted
      t.string :topic
    end
  end
end
