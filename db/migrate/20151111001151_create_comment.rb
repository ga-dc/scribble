class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text  :description
      t.references :post
    end
  end
end
