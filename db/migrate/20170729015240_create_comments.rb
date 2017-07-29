class CreateComments < ActiveRecord::Migration[5.1]
    def change
      create_table :songs do |t|
        t.string :author
        t.string :content
        t.references :post, index: true, foreign_key: true

        t.timestamps
      end
    end
end
