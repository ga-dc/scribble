# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Post.destroy_all

first_post = Post.create(title: "Breaking News!", body: "Today we learned about Rails!", photo_url: "www.google.com")

second_post = Post.create(title: "Trip to Post", body: "Today we take a field trip to the post", photo_url: "www.washingtonpost.com")

first_comment = Comment.create(title: "You suck!", body: "I want to learn about Python!", post: first_post)

second_comment = Comment.create(title: "You are great!", body: "I love Rails!", post: first_post)
