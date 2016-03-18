Post.destroy_all
Comment.destroy_all

Post.create({
  title: "ryan is fat",
  body: "huge body"

  })

  Post.create({
    title: "Mohammed is a terrorist",
    body: "its wrapped in a vest"
    })

  Comment.create({
    body: "OMG BECKY LOOK AT HIS COCK"
    })

  Comment.create({
    body: "This is dumb"
    })
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
