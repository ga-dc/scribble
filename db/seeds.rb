# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post1 = Post.create(author:"Chase Gruber",title:"Making a Blog",post_body:"This is a blog post. Woo hoo.")
post2 = Post.create(author:"Chewbaca",title:"Rrrrrrrrrrrrr",post_body:"Gwwwwwrrrrrrrr rrrrrr rrrrrr rrr.")

c1 = Comment.create(username:"l33t",comment:"Nice post, loser",post:post1)
c2 = Comment.create(username:"c3po",comment:"Well said",post:post2)
