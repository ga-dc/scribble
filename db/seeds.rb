# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command ({or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create({[{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create({name: 'Luke', movie: movies.first)

Post.destroy_all
Comment.destroy_all
Category.destroy_all
Tag.destroy_all

first_post = Post.create({title: "First Post", body: "blah blah blah", author: "Sloan"})
second_post = Post.create({title: "Second Post", body: "blah blah blah", author: "Martha"})
third_post = Post.create({title: "Third Post", body: "blah blah blah", author: "Ian"})
fourth_post = Post.create({title: "Fourth Post", body: "blah blah blah", author: "Logan"})

first_post.comments.create({body: "blah blah blah", author: "Troll 1"})
first_post.comments.create({body: "blah blah blah", author: "Troll 2"})
first_post.comments.create({body: "blah blah blah", author: "Troll 3"})

second_post.comments.create({body: "blah blah blah", author: "Troll 1"})
second_post.comments.create({body: "blah blah blah", author: "Troll 2"})
second_post.comments.create({body: "blah blah blah", author: "Troll 3"})

third_post.comments.create({body: "blah blah blah", author: "Troll 1"})
third_post.comments.create({body: "blah blah blah", author: "Troll 2"})
third_post.comments.create({body: "blah blah blah", author: "Troll 3"})

Category.create(title: "sports")
Category.create(title: "politics")
Category.create(title: "style")
Category.create(title: "literature")
Category.create(title: "business")
