# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all

ick = Post.create(title: "Welcome Back!", author: "Ick", content: "Sexy Back!!!")
kwon = Post.create(title: "I'm Back!", author: "Kwon", content: "Why??")
sung = Post.create(title: "I'm noob", author: "Sung", content: "What?")

comments = Comment.create([
    {content: "First Comment", post_id: ick.id, author: ick.author},
    {content: "Second Comment", post_id: kwon.id, author: kwon.author},
    {content: "Third Comment", post_id: sung.id, author: sung.author}
])
