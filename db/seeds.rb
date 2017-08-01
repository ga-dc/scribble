# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Post.destroy_all

perry = Post.create(title: "10 Reasons Why Perry Is Dumb", text: "#1 - #10: He is stupid.", photo_url: "https://cdn.bulbagarden.net/upload/thumb/7/7e/006Charizard.png/250px-006Charizard.png")

pcom = Comment.create(title: "Firm agreement", text: "He is an idiot! lol", post: perry)
