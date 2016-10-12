# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161012180958) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "comment"
    t.integer  "user_id"
    t.boolean  "enabled"
    t.datetime "date"
    t.integer  "post_id"
    t.index ["post_id"], name: "index_comments_on_post_id", using: :btree
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.string   "article"
    t.integer  "author_id"
    t.boolean  "comments_enabled"
    t.datetime "date_published"
    t.string   "banner_url"
    t.integer  "views"
    t.boolean  "enabled"
  end

  add_foreign_key "comments", "posts"
end
