Post.create!(name:"1st blog post", title:" this is a title", content:"this is the content")

Comment.create!(name:"guest comment", commField: "this is a rad post", post_id: 1) 



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
