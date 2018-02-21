# Ref: https://git.generalassemb.ly/ga-wdi-lessons/rails-activerecord
class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author
      t.string :text
      t.references :post, foreign_key: true
    end
  end
end
