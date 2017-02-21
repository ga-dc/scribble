# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# posts = Post.create
# [
#     { title: 'BARF for beginnners' },
#     { title: 'BARF for beginnners', content: 'its dog food, silly' }
# ]
# Comment.create(content: 'hi, Rover here, and i love love love BARF')
              # THIS DIDNT WORK, W JUST PARENS
              # posts = Post.create( title: 'BARF for beginnners', title: 'BARF for beginnners', content: 'its dog food, silly')
              # Post.create( title: 'BARF for beginnners', title: 'BARF for beginnners', content: 'its dog food, silly')
              # Post.create( title: 'BARF for beginnners', content: 'its dog food, silly')
# Post.destroy_all
# Comment.destroy_all
# Post.create( title: 'BARF for beginnners', content: 'its dog food, silly')
Post.create(title: "BARF for Beginners", content: "BARF is yummy")
Comment.create(content: "youre crazy", post_id: "1")
Comment.create(content: "no it aint", post_id: "1")
Comment.create(content: "uh-hun", post_id: "1")
Comment.create(content: "i kinda like it", post_id: "1")
Comment.create(content: "content_comment", post_id: "1")
Comment.create(content: "content_comment", post_id: "1")
Comment.create(content: "content_comment", post_id: "1")
# Comment.create(content: "Lorem", user: "Mike", post_id: "1")
