# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create({
  title: "Post Title 1",
  body: "This is body #1"
  })

Post.create({
  title: "Post Title 2",
  body: "This is body #2"
  })

Post.create({
  title: "Post Title 3",
  body: "This is body #3"
  })
