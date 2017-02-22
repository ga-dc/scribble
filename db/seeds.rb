# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all
Comment.destroy_all


bedig = Post.create(title: "Bedig over Carol", author: "Bedig", content: "Four loko bespoke knausgaard kinfolk dreamcatcher. Authentic bitters drinking vinegar portland mustache, mumblecore gluten-free vegan cred chicharrones keytar. Retro ethical authentic occupy. Kinfolk readymade skateboard, truffaut cold-pressed asymmetrical small batch. ")
carol = Post.create(title: "Carol over Bedig", author: "Carol", content: "Four loko bespoke knausgaard kinfolk dreamcatcher. Authentic bitters drinking vinegar portland mustache, mumblecore gluten-free vegan cred chicharrones keytar. Retro ethical authentic occupy. Kinfolk readymade skateboard, truffaut cold-pressed asymmetrical small batch.")



bedig.comments.create(author: "Carol", content: "You suck Bed")
carol.comments.create(author: "Bedig", content: "You suck Carol")
