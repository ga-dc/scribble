# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

first = Post.create(title: 'Llama Sounds', author: 'Liam Hawkins', content: 'No one knows what sound llamas make', likes: 2)
second = Post.create(title: 'Sheep Sounds', author: 'Bill Hawkins', content: 'Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep Sheep', likes: 67)
third = Post.create(title: 'Cow Sounds', author: 'William Hawkins', content: 'MOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO OOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO', likes: 0)
fourth = Post.create(title: 'Chicken Sounds', author: 'Will Hawkins', content: 'Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk Bawk', likes: 10)

first.comments.create(content: "So profound!", author: "Will Dawkins", likes: 1)
first.comments.create(content: "#this", author: "Phil Hawkins", likes: 1)
second.comments.create(content: "I don't think sheep talk like pokemon...", author: 'Will Dawkins', likes: 1)
second.comments.create(content: "I'm so sheepy - I mean SLEEPY - now.", author: 'Gill Hawkins', likes: 0)
third.comments.create(content: "Wow! That is a lot of O's!", author: 'Willie Hawkins', likes: 4)
fourth.comments.create(content: 'I think this post is not great.', author: 'Will Yum', likes: 3)
fourth.comments.create(content: 'I am a cat.', author: 'William', likes: 0)
fourth.comments.create(content: 'Why are all of these posts just animal sounds?', author: 'Bill Hawkins', likes: -2)
