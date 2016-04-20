# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
post1 = Post.create(body: "I like cake", user: "Tyler")
post2 = Post.create(body: "Paste", user: "Mike")
post3 = Post.create(body: "I like cake", user: "Trouble")

Comment.create(body:"HAHA", post: post1)
Comment.create(body:"HAHA", post: post2)
Comment.create(body:"HAHA", post: post3)
