# USED RAILS MODELS AND MIGRATIONS LESSON FOR THIS SECTION
class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :topic
      t.string :author
      t.string :content
    end
  end
end

