class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :article
      t.timestamps
    end
  end
end
