class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text     "comment_text"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "post_id"
    end
  end
end
