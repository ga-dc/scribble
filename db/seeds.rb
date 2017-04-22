# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all


post_1 = Post.create(title: "Study at GA", description: "Tech")
post_2 = Post.create(title:"Outcomes", description: "Career")
post_3 = Post.create(title:"P&J will make you gain weight like crazy", description: "Health")

Comment.create(author_name: "WD15 Student", content: "Kanye Hits", post: post_1)
Comment.create(author_name: "Eric Cartman", content: "The Wall", post: post_2)
Comment.create(author_name: "Ammar Alasadi", content: "The Who is it", post: post_3)
