# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
Post.destroy_all

Post.create(title: "China and the USA", date: 20151110)
Post.create(title: "Killer Bees, the Hidden Danger", date: 20151110)
Post.create(title: "Sasquatch in YOUR Backyard?  It may be truer than you think.", date: 20151110)

Comment.create(user: "James Peabody", date: 20151110)
Comment.create(user: "Michael Chriff", date: 20151110)
Comment.create(user: "Youknow Who", date: 20151110)
