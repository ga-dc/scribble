# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Comment.destroy_all
Post.destroy_all

posts = Post.create ([
  {title: "Post1", author: "author1", post: "post1" },
  {title: "Post2", author: "author2", post: "post2" },
  {title: "Post3", author: "author3", post: "post3" }
  ])
