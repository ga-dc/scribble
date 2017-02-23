# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all

cats = Post.create(title: "Cats", text: "I think that cats are better than dogs!")
  cats.comments.create(text: "I agree!")
  cats.comments.create(text: "Wrong! Dogs are better!")

paris = Post.create(title: "Paris", text: "Has anyone ever been to Paris?")
  paris.comments.create(text: "I have; it's great!")
  paris.comments.create(text: "Nope, but I heard Parisians are snobby.")
  paris.comments.create(text: "Don't you think you're overgeneralizing?")
