class CreateComments < ActiveRecord::Migration[5.1]
    def change
      create_table :comments do |t|
        t.string :author
        t.string :content
        t.references :post, index: true, foreign_key: true
        t.datetime :created_at
        t.datetime :updated_at

        t.timestamps
      end
    end
end
