# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
Post.destroy_all

Post.create([
  {headline: "Hello Hodor", body: "Ow, my spirit! Now what? Oh Leela! You're the only person I could turn to; you're the only person who ever loved me. I daresay that Fry has discovered the smelliest object in the known universe!", image: "http://fillmurray.com/300/300"},

  {headline: "I am Groot", body: "Good news, everyone! There's a report on TV with some very bad news!", image: "http://fillmurray.com/250/300"},

  {headline: "Shiny! Let's be bad guys.", body: "But I've never been to the moon! Does anybody else feel jealous and aroused and worried? Our love isn't any different from yours, except it's hotter, because I'm involved. Enough about your promiscuous mother, Hermes! We have bigger problems.", image: "http://fillmurray.com/400/400"},

  {headline: "Never tell me the odds!", body: "This is the worst part. The calm before the battle. Switzerland is small and neutral! We are more like Germany, ambitious and misunderstood! All I want is to be a monkey of moderate intelligence who wears a suit… that's why I'm transferring to business school!", image: "http://fillmurray.com/250/350"}
  ])
