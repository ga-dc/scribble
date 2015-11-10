class ChangeDateFormatInMyTable2 < ActiveRecord::Migration
  def up
    change_column :post, :date, :date
  end

  def down
    change_column :post, :date, :datetime
  end
end
