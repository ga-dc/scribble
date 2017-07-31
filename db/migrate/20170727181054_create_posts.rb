class CreatePosts < ActiveRecord::Migration[5.1]
    def change
    create_table :posts do |t|
      t.string :title
      t.string :text
      tstring :photo_url

      t.datetime :created_at
      t.datetime :updated_at

    end
  end
end
