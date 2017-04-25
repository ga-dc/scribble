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
    {author: "Jim Bean", title: "Amazing", body: "Who wants more of Hollywood Cole?" },
    {author: "John Doe", title: "Be Great", body: "Im afraid of the dark and Im stuck in the closet" },
    {author: "Snoop Dogg", title: "Gin and Juice", body: "With my mind on my money and my money on my mind" }
])

comments = Comment.create([
    {body:"Comment 1", post: posts[0]},
    {body:"Comment 2", post: posts[1]},
    {body:"Comment 3", post: posts[2]}
])
