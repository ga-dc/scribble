# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

got = Post.create(headline: "Season 6 of GoT was off the hook!", likes: 500, img_url: "https://upload.wikimedia.org/wikipedia/en/thumb/d/d1/Game_of_Thrones_Season_6.jpeg/220px-Game_of_Thrones_Season_6.jpeg")
got2 = Post.create(headline: "Whoaaaa, didnt see that coming!", likes: 200, img_url: "https://fsmedia.imgix.net/16/77/d9/53/3bfd/4f63/8815/f4aeb991003a/ep51-ss03-1920jpg.jpeg")
got3 = Post.create(headline: "I can't wait till the next season", likes: 300, img_url: "https://i.ytimg.com/vi/42XOTq22088/maxresdefault.jpg")


comment1 = Comment.create(title: "Best Season", body: "I agree, it was the best season yet.", likes_comments: 200, post: got)
comment2 = Comment.create(title: "Worst Season", body: "Mehhh, I dont agree at all.", likes_comments: 200, post: got)
comment3 = Comment.create(title: "Best Season", body: "HOUSE LANNISTER!", likes_comments: 200, post: got)
