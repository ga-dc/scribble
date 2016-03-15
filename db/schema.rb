# encoding: UTF-8
ActiveRecord::Schema.define(version: 20160314171357) do

  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.string   "author_email"
    t.string   "post_content"
    t.string   "post_tag"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "author"
    t.string   "comment_email"
    t.string   "comment_content"
    t.integer  "post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
