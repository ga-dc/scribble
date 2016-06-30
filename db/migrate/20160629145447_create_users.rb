class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user
      t.string :user_id
      t.string :email
      t.string :password
    end
    add_index :users, :user_id
  end
end
