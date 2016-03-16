class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
        t.string :response
        t.datetime :created_at
        t.datetime :updated_at
        t.integer :post_id
    end
  end
end
