# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all

first = Post.create(user:"satyal89@gmail.com",title:"FIRST",content:"first post lol",tags:["sometag","hashtag"])
first.comments.create(user:"sanj",content:"first comment lol")
second = Post.create(user:"satyal89@gmail.com",title:"reprise",content:"this time it's the second post.",tags:["lolcats","bacon"])
second.comments.create(user:"sanj",content:"first comment")
second.comments.create(user:"sanj",content:"double post!")
