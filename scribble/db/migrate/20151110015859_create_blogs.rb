class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.belongs_to :author
      t.string :message
      t.string :image_url
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
