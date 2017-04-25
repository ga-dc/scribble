# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all

post_one = Post.create(author:"Greg White", title:"Climate Change in West Africa", text: "This is a 500 word essay about climate change and the effects in West Africa", category: "Public Health")
post_two = Post.create(author:"Wendy Smith", title:"Cooking with Seasonal Herbs", text: "This is a 500 word essay about cooking with local herbs that are in season", category: "Horticulture")
post_three = Post.create(author:"Mary White", title:"Why Breaking Bad superior to Better Call Saul", text: "This is a 500 word essay about Walter White", category: "Pop Culture")
post_four = Post.create(author:"Wendy Smith", title:"Cooking with Seasonal Herbs", text: "This is a 500 word essay about cooking with local herbs that are in season", category: "Horticulture")
post_five = Post.create(author:"Greg White", title:"Fossil Fuel Trends in North America", text: "This is a 500 word essay about fossil fuel usage in North Amerca", category: "Science")

Comment.create(user: "Adam Smith", text: "Very interesting! Keep it up", post: post_two)
Comment.create(user: "Margaret Grasey", text: "Weak research methods!", post: post_one)
Comment.create(user: "Bill Craig", text: "Enjoyed this very much", post: post_four)
Comment.create(user: "Cindy Davids", text: "Thumbs Up!!!", post: post_four)
Comment.create(user: "Jessica March", text: "Great read, @Greg White", post: post_five)
Comment.create(user: "Annie S,", text: "Disagree with most points but interesting", post: post_three)
Comment.create(user: "Cindy Davids", text: "Thumbs Up!!!", post: post_four)
Comment.create(user: "C.D.W", text: "Where are your literature reviews?", post: post_five)
