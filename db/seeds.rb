# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all
Comment.destroy_all

post_one = Post.create({
  title: "first blog post",
  author: "Troy Sipprelle",
  content: "This is a test.",
  })

post_two = Post.create({
  title: "second blog post",
  author: "Troy Sipprelle",
  content: "Am I getting good at this?",
})

post_three = Post.create({
  title: "third blog post",
  author: "Jackie Orr",
  content: "I'm taking over to turn this around."
})

first_comment = Comment.create({
  commenter: "Jackie Orr",
  comment: "What an awful blog",
  post_id: 1
})

second_comment = Comment.create({
  commenter: "Jackie Orr",
  comment: "Creative title",
  post_id: 1
})

third_comment = Comment.create({
  commenter: "Owen Kay",
  comment: "I feel like a brownie metaphor would have made more sense.",
  post_id: 1
})

fourth_comment = Comment.create({
  commenter: "Kelly Oh",
  comment: "This blogger really needs to stop attacking people.",
  post_id: 2
})
