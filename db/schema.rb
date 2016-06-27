ActiveRecord::Schema.define do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string   "user"
    t.string   "post_id"
    t.text   "post"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.string   "user"
    t.string   "post_id"
    t.string   "comment_id"
    t.text      "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "user"
    t.string   "userid_id"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end


end
