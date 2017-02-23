# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = Post.create([
  {title: "Post 1", content: "This is post 1", date: "02-21-2017"},
  {title: "Post 2", content: "This is post 2", date: "02-23-2017"},
  {title: "Post 3", content: "This is post 3", date: "02-24-2017"},
  {title: "Post 4", content: "This is post 4", date: "02-25-2017"}
  ])

comments = Comment.create([
  {content: "Comment 1", post_id: 1},
  {content: "Comment 2", post_id: 2},
  {content: "Comment 3", post_id: 3},
  {content: "Comment 4", post_id: 4}
  ])
