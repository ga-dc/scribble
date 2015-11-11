# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  Post.destroy_all
  Comment.destroy_all

  Post.create(title: "Cats are great", post: "Cats are great.")

  Post.create(title: "Dogs are OK", post: "Dogs are great but not as great as cats.")

  Post.create(title: "Hamsters are EH", post: "Hamsters are pretty boring.")

  Post.create(title: "Ferrets are BOO", post: "Ferrets are hyper, stinky animals.")   
