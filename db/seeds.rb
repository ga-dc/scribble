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
  {title: "Peets is No. 1", author: "Meag Doherty"},
  {title: "Starbucks is No. 1", author: "Whitney Purdham"},
  {title: "Dolcezza is No. 1", author: "Mary Kate Mezzetti"}
])

comments = Comment.create([
  {author: "Whitney Purdham", subject: "Peets sucks", post_id:[4]},
  {author: "Mary Kate Mezzetti", subject: "Starbucks sucks", post_id:[5]},
  {author: "Meag Doherty", subject: "Dolcezza sucks", post_id:[4]}
])
