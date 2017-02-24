# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

post1 = Post.create({
  title: "Favorite songs",
  content: "Hello, Fame, Barbie girl ",
  username: "Philly123",
  likes: 2
})
post2 = Post.create({
  title: "Favorite things",
  content: "Donuts, hotdogs, Barbies ",
  username: "ATL123",
  likes: 6
})
post3 = Post.create({
  title: "Favorite food",
  content: "chinese, american, japanese ",
  username: "foodie123",
  likes: 3
})
post4 = Post.create({
  title: "Favorite smells",
  content: "food, roses, donuts ",
  username: "SoHungry123",
  likes: 2
})
post5 = Post.create({
  title: "Favorite people",
  content: "Adele, Beyonce, Lady Gaga",
  username: "Music123",
  likes: 2
})
post6 = Post.create({
  title: "Favorite drinks",
  content: "Water, beer, wine ",
  username: "Lush123",
  likes: 2
})

comment1 = Comment.create({
  content: "Cool",
  post_id: 1
})
comment2 = Comment.create({
  content: "Cool",
  post_id: 2
})
comment3 = Comment.create({
  content: "Cool",
  post_id: 3
})
comment4 = Comment.create({
  content: "Cool",
  post_id: 4
})
comment5 = Comment.create({
  content: "Cool",
  post_id: 5
})
comment6 = Comment.create({
  content: "Cool",
  post_id: 6
})
