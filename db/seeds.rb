# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Post.destroy_all

post1 = Post.create!({
  title: "First Post",
  article: "This is my first post",
  author_id: 1,
  views:0,
  enabled:false,
  comments_enabled:false
})
post2 = Post.create!({
  title: "Second Post",
  article: "YALP  Yet another Lame Post",
  author_id: 1,
  views:0,
  enabled:false,
  comments_enabled:false
})

post1.comments.create!({
  comment: "This is very Boring",
  user_id: 3,
  enabled: false
})
post1.comments.create!({
  comment: "Loser Post",
  user_id: 2,
  enabled: false
})
post1.comments.create!({
  comment: "2nd Comment on First Post",
  user_id: 3,
  enabled: false
})

post2.comments.create!({
  comment: "1 Comment on second post 1",
  user_id: 3,
  enabled: false
})
post2.comments.create!({
  comment: "2 Comment on second post 2",
  user_id: 2,
  enabled: false
})
post2.comments.create!({
  comment: "3 Comment on second post 2 ",
  user_id: 3,
  enabled: false
})
