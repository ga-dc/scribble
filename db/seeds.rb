# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

posts = Post.create([
  {title:"Friend", body: "No! The cat shelter's on to me. Now Fry, it's been a few years since medical school, so remind me. Disemboweling in your species: fatal or non-fatal? Oh, but you can. But you may have to metaphorically make a deal with the devil. And by devil I mean Robot Devil. And by metaphorically, I mean get your coat.

Uh, is the puppy mechanical in any way? Bender! Ship! Stop bickering or I'm going to come back there and change your opinions manually! Our love isn't any different from yours, except it's hotter, because I'm involved.

Meh. Hello, little man. I will destroy you! Leela, Bender, we're going grave robbing. Hey, guess what you're accessories to. For one beautiful night I knew what it was like to be a grandmother. Subjugated, yet honored.

"}])

comments = Comment.create([
  {body:"Comment_1", post: posts[0],
])
