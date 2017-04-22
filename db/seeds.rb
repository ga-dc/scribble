# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

Post.create(user: "jkoo", title: "Hamburger", photo_url: "http://www.hamburgerhamlet.com/wp-content/uploads/2014/11/the-hamburger-hamlet-sherman-oaks-40.jpg", content: "A hamburger or burger is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, barbecued, or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, bacon, onion, pickles, or chiles; condiments such as mustard, mayonnaise, ketchup, relish, or \"special sauce\"; and are frequently placed on sesame seed buns. A hamburger topped with a slice of cheese is called cheeseburger.(From Wikipedia, the free encyclopedia)")
Post.create(user: "jkoo", title: "Pizza", photo_url: "http://www.athenaspizzaamherst.com/wp-content/uploads/2013/05/front-1-1008x500.jpg", content: "Pizza is a yeasted flatbread popularly topped with tomato sauce and cheese and baked in an oven. It is commonly topped with a selection of meats, vegetables and condiments. The term was first recorded in the 10th century, in a Latin manuscript from Gaeta in Central Italy.The modern pizza was invented in Naples, Italy, and the dish and its variants have since become popular and common in many areas of the world.(From Wikipedia, the free encyclopedia)")
