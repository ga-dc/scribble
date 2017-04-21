class CreatePosts < ActiveRecord::Migration[5.0]
    def change
        create_table :posts do |t|
            t.string :author
            t.string :content
            t.string :title
        end
    end
end
