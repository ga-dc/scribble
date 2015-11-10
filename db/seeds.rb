# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  Post.destroy_all
  Comment.destroy_all

  Post.create(title: "Cats", post: "Cats are great.", date: 11/10/15) 

  Post.create(title: "Dogs", post: "Dogs are great but not as great as cats.")

  Post.create(title: "Hamsters", post: "Hamsters are pretty boring.")

  Post.create(title: "Ferrets", post: "Ferrets are hyper, stinky animals.")
