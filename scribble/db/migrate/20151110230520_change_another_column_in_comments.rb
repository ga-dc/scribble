class ChangeAnotherColumnInComments < ActiveRecord::Migration
  def change
    rename_column :comments, :date, :posted_date
  end
end
