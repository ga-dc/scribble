class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer     :time
      t.string :date
      t.string  :title
      t.text    :body
    end
  end
end
