# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Comment.destroy_all

hall_oates = Post.create({
  name: "Hall & Oates",
  title: "Oh my",
  content: "rails done did it again"
})

limp_bizkit = Post.create({
  name: "Limp Bizkit",
  title: "Sleep Deprived",
  content: "I can't sleep, ruby is keeping me up all night"
})

weird_al = Post.create({
  name: "Weird Al Yankovic",
  title: "Ruby is awesome",
  content: "I'm loving ruby on rails"
})

hall_oates.comments.create({
  name: "Taylor Swift",
  message: "I'm standing in a nice dress"
})

limp_bizkit.comments.create({
  name: "Adele",
  message: "hello, its me.  I was wondering.."
})

weird_al.comments.create({
  name: "Rihanna",
  message: "nobody text me in crisis"
})
