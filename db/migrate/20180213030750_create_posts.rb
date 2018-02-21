# Ref: https://git.generalassemb.ly/ga-wdi-lessons/rails-activerecord
class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :text
    end
  end
end