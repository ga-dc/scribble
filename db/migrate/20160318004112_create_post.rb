class CreatePost < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string
      t.string
    end
  end
end
