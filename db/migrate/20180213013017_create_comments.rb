# USED RAILS MODELS AND MIGRATIONS LESSON FOR THIS SECTION
class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :content
      t.references :post, foreign_key: true
    end
  end
end
