class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.int     :time
      t.string  :title
      t.text    :description
    end
  end
end
