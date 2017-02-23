# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Comment.destroy_all
Post.destroy_all

first_post = Post.create!(author: "Nyk", title: "Awesome Title", text: "This is the legit")

# Comment.create!(name: "Bobby Jr", content: "Awesome Title was legit!", post: first_post)
