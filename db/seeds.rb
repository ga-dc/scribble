# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Comment.destroy_all
Post.destroy_all

perry = User.create(email: 'perry@gmail.com', password: 'password')

first_post = perry.posts.create(title: "Breaking News!", body: "Today we learned about Rails!  It was so much fun.  I cannot wait to do more!", photo_url: "http://assets.pokemon.com/assets/cms2/img/pokedex/full/006_f3.png")

second_post = perry.posts.create(title: "Trip to Post", body: "Today we took a field trip to the Washington Post.  Wow, what a trip.  We walked there and then toured the building.", photo_url: "http://realorsatire.com/wp-content/uploads/2016/11/washintonpost.jpg")

first_comment = perry.comments.create(title: "You suck!", body: "I want to learn about Python!", post: first_post)

second_comment = perry.comments.create(title: "You are great!", body: "I love Rails!", post: first_post)

third_comment = perry.comments.create(title: "hey", body: "You are ok with me.", post: second_post)
