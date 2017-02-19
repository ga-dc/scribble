class CreatePost < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :author
      t.string :text
      t.datetime :time_created
    end
  end
end
