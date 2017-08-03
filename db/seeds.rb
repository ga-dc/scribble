# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
Comment.destroy_all
User.destroy_all

jake = User.create(email: 'jeg4t@virginia.edu', password: 'password')


first_post = jake.posts.create(title: 'title', content: 'content')
second_post = jake.posts.create(title: 'more titles', content: 'content contennnnt')

first_post.comments.create(comment_content: 'coneten for comment')
first_post.comments.create(comment_content: 'wooooooo')
second_post.comments.create(comment_content: 'contenente forzzzz comment')
