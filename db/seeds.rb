# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all

users = User.create([

  {email: "belle@french.com"},
  {email: "ariel@atlantis.com"}

  ])

posts = Post.create([

  {title: "Great Wide Somewhere",
   content: "Little town, it's a quiet village. Every day like the one before. Little town, full of little people, waking up to say 'Bonjour!' There goes the baker with his tray, like always - the same old bread and rolls to sell. Every morning, just the same, since the morning that we came to this poor provincial town.",
   user_id: 1},

  {title: "Don't Reprimand Your Daughters",
   content: "I want to be where the people are. I want to see... want to see 'em laughing, walking around on those - what do you call them? OH - feet. Flipping your fins, you don't get too far. Legs are required for jumping, dancing, strolling along down the - what's the word? - street.",
   user_id: 2}
  ])
