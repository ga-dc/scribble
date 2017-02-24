class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.belongs_to :categories, index: true
      t.belongs_to :posts, index: true
    end
  end
end
