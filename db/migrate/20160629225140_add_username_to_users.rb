class AddUsernameToUsers < ActiveRecord::Migration
  def change
    change_column :users, :username, :string
    change_column :users, :password, :string   
  end
end
