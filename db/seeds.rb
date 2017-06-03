# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all
Comment.destroy_all


ruby = Post.create(title: "Ruby", body: "I think Ruby is the best back-end programming language.")
rails = Post.create(title: "Rails", body: "Rails is really cool framework.")
michael_jordan = Post.create(title: "Michael Jordan", body: "He is the best player ever in the NBA.")
donald_trump = Post.create(title: "Donald Trump", body: "He is a really good politician and will make America great again.")
doughnut = Post.create(title: "Doughnut", body: "The most overrated dessert in the world.")



Comment.create(body: "I agree with that, but Rails is also really complicated too." , post: rails)
Comment.create(body: "Yes, he is. I think that nobody will be like him ever" , post: michael_jordan)
Comment.create(body: "Hey Donald is it you?" , post: donald_trump)
