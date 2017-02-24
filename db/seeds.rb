# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

posts = Post.create([
  {title: "First Post", body: "Hodor hodor HODOR! Hodor HODOR hodor, hodor hodor?! Hodor. Hodor hodor hodor hodor, hodor. Hodor hodor?! Hodor, hodor HODOR hodor, hodor hodor, hodor, hodor hodor. Hodor hodor - hodor hodor hodor hodor! Hodor HODOR hodor, hodor hodor; hodor hodor hodor? Hodor, hodor. Hodor. Hodor, hodor; hodor hodor, hodor. Hodor hodor. Hodor. Hodor! Hodor hodor, hodor... Hodor hodor hodor; hodor hodor, hodor, hodor hodor. Hodor, hodor, hodor. Hodor hodor - hodor hodor hodor hodor?!"},
  {title: "Second Post", body: "Hodor hodor HODOR! Hodor HODOR hodor, hodor hodor?! Hodor. Hodor hodor hodor hodor, hodor. Hodor hodor?! Hodor, hodor HODOR hodor, hodor hodor, hodor, hodor hodor. Hodor hodor - hodor hodor hodor hodor! Hodor HODOR hodor, hodor hodor; hodor hodor hodor? Hodor, hodor. Hodor. Hodor, hodor; hodor hodor, hodor. Hodor hodor. Hodor. Hodor! Hodor hodor, hodor... Hodor hodor hodor; hodor hodor, hodor, hodor hodor. Hodor, hodor, hodor. Hodor hodor - hodor hodor hodor hodor?!"},
  {title: "Third Post", body: "Hodor hodor HODOR! Hodor HODOR hodor, hodor hodor?! Hodor. Hodor hodor hodor hodor, hodor. Hodor hodor?! Hodor, hodor HODOR hodor, hodor hodor, hodor, hodor hodor. Hodor hodor - hodor hodor hodor hodor! Hodor HODOR hodor, hodor hodor; hodor hodor hodor? Hodor, hodor. Hodor. Hodor, hodor; hodor hodor, hodor. Hodor hodor. Hodor. Hodor! Hodor hodor, hodor... Hodor hodor hodor; hodor hodor, hodor, hodor hodor. Hodor, hodor, hodor. Hodor hodor - hodor hodor hodor hodor?!"}
  ])

comments = Comment.create([
  {body:"The first comment on the first post", post: posts[0]},
  {body:"The first comment on the second post", post: posts[1]},
  {body:"The frist comment on the third post", post: posts[2]}
  ])
