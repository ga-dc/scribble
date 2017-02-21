class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :topic
      t.string :user
      t.string :date
    end
  end
end
