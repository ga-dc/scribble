# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Post.destroy_all
Comment.destroy_all

post1 = Post.create!(title: "Post 1", post_text: "Text of post 1")
post2 = Post.create!(title: "Post 2", post_text: "Text of post 2")
post3 = Post.create!(title: "Post 3", post_text: "Text of post 3")

comment1 = Comment.create!(comment_text: "Comment1", post: post1)
comment2 = Comment.create!(comment_text: "Comment2", post: post2)
comment3 = Comment.create!(comment_text: "Comment3", post: post3)
comment4 = Comment.create!(comment_text: "Comment4", post: post1)
