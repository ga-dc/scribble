# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
Post.destroy_all

@post1 = Post.create(title: "China and the USA", article: "The South China Sea....", date: 20151110)
@post2 = Post.create(title: "Killer Bees, the Hidden Danger", article: "Your life is is danger!", date: 20151110)
@post3 = Post.create(title: "Sasquatch in YOUR Backyard?  It may be truer than you think.", article: "The danger...", date: 20151110)

Comment.create(user: "James Peabody", article: "This sucks!", date: 20151110, post: @post1)
@post2.comments.create(user: "Michael Chriff", article: "I agree mate!", date: 20151110)
@post3.comments.create(user: "Youknow Who", article: "PSHHHHHHH!", date: 20151110)


# create_table "comments", force: :cascade do |t|
#   t.string  "user"
#   t.text    "article"
#   t.integer "date"
#   t.integer "post_id"
# end
#
# create_table "posts", force: :cascade do |t|
#   t.string  "title"
#   t.text    "article"
#   t.integer "date"
# end
