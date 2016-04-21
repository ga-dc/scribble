# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all

post1 = Post.create(title: "Spring", text: "A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart.")
post2 = Post.create(title: "MTV", text: "DJs flock by when MTV ax quiz prog. Junk MTV quiz graced by fox whelps.")
post3 = Post.create(title: "Wiz", text: "A wizard’s job is to vex chumps quickly in fog. Watch Jeopardy!")
