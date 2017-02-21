class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table      :comments do |t|
          t.text      :content
          t.timestamps
          t.string    :user
          # t.string    :current_user_id
          # t.string    :user.name
          t.integer   :post_id
          # t.references :post, index: true, foreign_key: true
          # t.string :updated_by
          # t.string :created_by
    end
  end
end
