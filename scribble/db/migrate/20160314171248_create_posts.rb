class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title #of datatype string, pass in a symbol representing the name of column
      t.string :text
    end
  end
end
