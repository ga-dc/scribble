class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
    end
  end
end
